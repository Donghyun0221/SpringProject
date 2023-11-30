package com.future.my.news.vo;


public class NewsVO {
    private String title; 
    private String href;  
    private String datencite;
    
    public NewsVO() {
    	
    }
    

	public NewsVO(String title, String href, String datencite) {
		
		this.title = title;
		this.href = href;
		this.datencite = datencite;
	}


	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getHref() {
		return href;
	}

	public void setHref(String href) {
		this.href = href;
	}

	public String getDatencite() {
		return datencite;
	}

	public void setDatencite(String datencite) {
		this.datencite = datencite;
	}

	@Override
	public String toString() {
		return "NewsVO [title=" + title + ", href=" + href + ", datencite=" + datencite + "]";
	}
	
    
}




