package org.scout24.spider.service;

import java.io.IOException;
import java.util.List;

import org.scout24.spider.model.DocumentDetails;
import org.scout24.spider.model.HyperMediaLink;

/**
 * @author chandrakumar
 *
 */
public interface CrawlerService {

	DocumentDetails fectchPageDetails(String pageURI) throws IOException;

	void processHyperLinkStatus(List<HyperMediaLink> hyperMediaLinks);

}
