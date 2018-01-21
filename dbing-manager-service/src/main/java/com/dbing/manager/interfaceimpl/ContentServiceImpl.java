package com.dbing.manager.interfaceimpl;

import com.dbing.manager.pojo.Content;
import com.dbing.manager.services.ContentService;
import org.springframework.stereotype.Service;

@Service
public class ContentServiceImpl extends BaseServiceImpl<Content> implements ContentService {
}
