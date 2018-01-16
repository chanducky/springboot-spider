package org.scout24.spider;



import static org.assertj.core.api.Assertions.assertThat;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.scout24.spider.controller.CrawlerController;
import org.scout24.spider.controller.HomeController;
import org.scout24.spider.exceptions.GlobalExceptionHandler;
import org.scout24.spider.repository.DocumentDetailsRepository;
import org.scout24.spider.repository.HyperMediaLinkRepository;
import org.scout24.spider.scheduler.MemoryCleanupTask;
import org.scout24.spider.service.CrawlerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ContextLoadTest {

	
	@Autowired
    private HomeController homeController;

	@Autowired
    private CrawlerController crawlerController;

	@Autowired
    private CrawlerService crawlerService;

	@Autowired
    private DocumentDetailsRepository documentDetailsRepository;
	
	@Autowired
    private HyperMediaLinkRepository hyperMediaLinkRepository;

	@Autowired
    private MemoryCleanupTask memoryCleanupTask;
	
	@Autowired
    private GlobalExceptionHandler globalExceptionHandler;
	
	
	@Test
    public void contexLoadsHomeController() throws Exception {
        assertThat(homeController).isNotNull();
    }
	
	@Test
    public void contexLoadsCrawlerController() throws Exception {
        assertThat(crawlerController).isNotNull();
    }
	
	@Test
    public void contexLoadsCrawlerService() throws Exception {
        assertThat(crawlerService).isNotNull();
    }
	@Test
    public void contexLoadsDocumentDetailsRepository() throws Exception {
        assertThat(documentDetailsRepository).isNotNull();
    }

	@Test
    public void contexLoadsHyperMediaLinkRepository() throws Exception {
        assertThat(hyperMediaLinkRepository).isNotNull();
    }

	@Test
    public void contexLoadsMemoryCleanupTask() throws Exception {
        assertThat(memoryCleanupTask).isNotNull();
    }
	
	@Test
    public void contexLoadsglobalExceptionHandler() throws Exception {
        assertThat(globalExceptionHandler).isNotNull();
    }
	

}
