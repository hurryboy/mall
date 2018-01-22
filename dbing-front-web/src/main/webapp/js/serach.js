// JavaScript Document
 !function () {
        pageConfig.isdebug = (function () {
      var searchStr = location.search,
        switchArr = [],
        len, i,
        switchObj = {};
      searchStr.replace(/isdebug=((?:-\d+)*)/, function (m, g) {
        switchArr = g.split('-');
        len = switchArr.length;
        for (i = 0; i < len; i++) {
          if (switchArr[i] === '') continue;
          switchObj[switchArr[i]] = true;
        }
      });
      return switchObj;
    })();
    window.readCookie = function (name) {
      var nameEQ = name + '=';
      var ca = document.cookie.split(';');
      for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
          c = c.substring(1, c.length);
        }
        if (c.indexOf(nameEQ) == 0) {
          return c.substring(nameEQ.length, c.length);
        }
      }
      return null;
    };
    pageConfig.getHashProbability = function (strNum, baseNum) {
      var hashCode = function (str) {
        for (var result = 0, i = 0; i < str.length; i++) {
          result = (result << 5) - result + str.charCodeAt(i);
          result &= result;
        }
        return result;
      }
      return Math.abs(hashCode(strNum)) % baseNum;
    };
    var
      pin = readCookie('pin') || '',
      jda = readCookie('__jda') || '-1',
      uuid = jda.split('.')[1] || '-1';
    pageConfig.user = {
      pin: decodeURIComponent(pin),
      jda: jda,
      uuid: uuid,
      unifiedHash: pageConfig.getHashProbability(uuid, 10000)
    };
    if (pageConfig.disableNewBI) {
      pageConfig.useBi = false;
    } else {
      if (pageConfig.useNewBISection) {
        if (pageConfig.user.unifiedHash < pageConfig.useNewBISection.start
          || pageConfig.user.unifiedHash > pageConfig.useNewBISection.end) {
          pageConfig.useBi = false;
        } else {
          pageConfig.useBi = true;
        }
      } else {
        pageConfig.useBi = true;
      }
    }
    if (20 in pageConfig.isdebug) {
      pageConfig.useBi = true;
    } else if (21 in pageConfig.isdebug) {
      pageConfig.useBi = false;
    }
  }();
  !function () {
    if (22 in pageConfig.isdebug) {
      return pageConfig.enableActMark = true;
    }
    if (!pageConfig.enableActMark) return;
    var now = new Date().getTime(),
      start = new Date('2017/05/25 00:00:00').getTime(),
      end = new Date('2017/06/21 00:00:00').getTime();
    if (now < start || now > end) {
      pageConfig.enableActMark = false;
    }
  }();
  ! function () {
    var getElementsByClassName = function(search) {
      var d = document, elements, pattern, i, results = [];
      if (d.querySelectorAll) {
        return d.querySelectorAll("." + search);
      }
      if (d.evaluate) {
        pattern = ".//*[contains(concat(' ', @class, ' '), ' " + search + " ')]";
        elements = d.evaluate(pattern, d, null, 0, null);
        while ((i = elements.iterateNext())) {
          results.push(i);
        }
      } else {
        elements = d.getElementsByTagName("*");
        pattern = new RegExp("(^|\\s)" + search + "(\\s|$)");
        for (i = 0; i < elements.length; i++) {
          if ( pattern.test(elements[i].className) ) {
            results.push(elements[i]);
          }
        }
      }
      return results;
    };
    var
      cate = getElementsByClassName('cate')[0],
      cateItem = getElementsByClassName('cate_menu_item'),
      len = cateItem.length;
    if (len === 15) {
      cate.className += ' cate_15';
    }
  }();