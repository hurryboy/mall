package com.dbing.front.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.dbing.common.pojo.HttpResult;
import com.dbing.front.Cookies.CookieUtils;
import com.dbing.front.httpClient.HttpClientUtils;
import com.dbing.front.pojo.Order;
import com.dbing.front.service.RedisServiceImpl;
import com.dbing.manager.pojo.Product;
import com.dbing.manager.pojo.User;
import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

@RequestMapping("order")
@Controller
public class OrderController {

    @Autowired
    private HttpClientUtils httpClientUtils;

    @Value("${DBING_MANAGER_URL}")
    private String DBING_MANAGER_URL;

    @Value("${DBING_ORDER_URL}")
    private String DBING_ORDER_URL;

    @Autowired
    private RedisServiceImpl redisUtils;

    private static final ObjectMapper MAPPER = new ObjectMapper();



    /**
     * 去订单确认页
     * @param productId
     * @return
     */
    /*@RequestMapping(value="{productId}",method=RequestMethod.GET)
    public ModelAndView toOrder(@PathVariable("productId") Long productId){
        ModelAndView mv = new ModelAndView("order");
        String url = DBING_MANAGER_URL + "/restful/api/products/"+productId;
        try {
            String jsonData = this.httpClientUtils.doGet(url).getContent();
            Product product  = null;
            if (jsonData!=null) {
                product = MAPPER.readValue(jsonData, Product.class);
            }
            mv.addObject("product", product);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mv;
    }*/

    /**
     * 前端传回选择的购物项   以productId ： Num 的格式传回
     * 下单
     */
    @RequestMapping(value="submit",method=RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> submit(HashMap<Long,Integer> map,
                                      HttpServletRequest request){
        Map<String, Object> result = new HashMap<String, Object>();

        Order order = new Order();

        try {
            String ticket = CookieUtils.getCookieValue(request, "token", true);

            String jsonData = this.redisUtils.get(ticket);
            if (jsonData!=null) {
                User user = MAPPER.readValue(jsonData, User.class);
                if (user!=null) {
                    order.setUserId(user.getId());
                    order.setBuyerNick(user.getUsername());
                }
            }

            String url = DBING_ORDER_URL+"/order/create";

            HttpResult httpResult = this.httpClientUtils.doPostJson(url, MAPPER.writeValueAsString(order));

            if (httpResult.getStatusCode() == 200) {
                //响应成功
                String json = httpResult.getContent();
                JsonNode jsonNode = MAPPER.readTree(json);
                if (jsonNode.get("status").intValue() == 200) {
                    //创建订单成功
                    String data = jsonNode.get("data").asText();
                    result.put("status", "200");
                    result.put("data", data);
                }else{
                    result.put("status", "500");
                    result.put("data", null);
                }

            }

        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return result;
    }

    /*
    *  public Map<String, Object> submit(Order order, HttpServletRequest request){
        Map<String, Object> result = new HashMap<String, Object>();

        try {
            String ticket = CookieUtils.getCookieValue(request, "token", true);

            String jsonData = this.redisUtils.get(ticket);
            if (jsonData!=null) {
                User user = MAPPER.readValue(jsonData, User.class);
                if (user!=null) {
                    order.setUserId(user.getId());
                    order.setBuyerNick(user.getUsername());
                }
            }

            String url = DBING_ORDER_URL+"/order/create";

            HttpResult httpResult = this.httpClientUtils.doPostJson(url, MAPPER.writeValueAsString(order));

            if (httpResult.getStatusCode() == 200) {
                //响应成功
                String json = httpResult.getContent();
                JsonNode jsonNode = MAPPER.readTree(json);
                if (jsonNode.get("status").intValue() == 200) {
                    //创建订单成功
                    String data = jsonNode.get("data").asText();
                    result.put("status", "200");
                    result.put("data", data);
                }else{
                    result.put("status", "500");
                    result.put("data", null);
                }

            }

        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return result;
    }
    * */

    /**
     * 显示成功页
     */
    @RequestMapping(value="success",method=RequestMethod.GET)
    public ModelAndView success(@RequestParam("id") String id){
        ModelAndView mv = new ModelAndView("success");
        try {
            String url = DBING_ORDER_URL + "/order/query/"+id;
            String jsonData = this.httpClientUtils.doGet(url).getContent();
            if (jsonData!=null) {
                Order order = MAPPER.readValue(jsonData, Order.class);
                mv.addObject("order", order);
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        //两天后
        mv.addObject("date", new DateTime().plusDays(2).toString("MM月dd日"));

        return mv;

    }
}
