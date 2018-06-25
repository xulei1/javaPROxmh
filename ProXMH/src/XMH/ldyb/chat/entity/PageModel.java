package XMH.ldyb.chat.entity;

import java.util.List;

public class PageModel {
	/* ��ҳ���� */
	@SuppressWarnings("rawtypes")
	private List datas;
	/* ��ǰҳ */
	private int currPage;
	/* ÿҳ��ʾ�ļ�¼���� */
	private int pageSize;// Ĭ��ÿҳ��ʾ4����¼
	/* �ܼ�¼���� */
	private int totals;
	/* ��ҳ�� */
	private int pageCount;
	// ��ҳ��ʾ��ҳ��,������ҳ������ʾ1��2��3��4��5ҳ��start��Ϊ1��end��Ϊ5�����Ҳ���������
	private int start;
	private int end;
	/* ��һҳ */
	private int nextPage;
	/* ǰһҳ */
	private int prevPage;
	/* ��ҳ�ĵ�ַ */
	private String url;

	public PageModel() {

	}

	

	/**
	 * ���ݷ�ҳ��Ҫ�������췭ҳģ��
	 * 
	 * @param totals
	 *            �ܼ�¼��
	 * @param datas
	 *            ��ҳ����
	 * @param pageSize
	 *            ÿҳ��ʾ������
	 * @param currPage
	 *            ��ǰҳ
	 */
	@SuppressWarnings("rawtypes")
	public PageModel(int totals, List datas, int pageSize, int currPage) {
		this.totals = totals;
		this.datas = datas;
		this.pageSize = pageSize;
		this.currPage = currPage;
		if (totals % pageSize == 0) {
			this.pageCount = totals / pageSize;
		} else {
			this.pageCount = totals / pageSize + 1;
		}
		this.start = 1;
		this.end = 5;
		this.nextPage = this.currPage + 1 > this.pageCount ? this.pageCount : this.currPage + 1;
		this.prevPage = this.currPage - 1 < 1 ? 1 : this.currPage - 1;

		if (pageCount <= 5) {
			// ��ҳ����С��5����ôend��Ϊ��ҳ����ֵ�ˡ�
			this.end = this.pageCount;
		} else {
			// ��ҳ������5����ô��Ҫ���ݵ�ǰ�ǵڼ�ҳ�����ж�start��endΪ�����ˣ�
			this.start = currPage - 2;
			this.end = currPage + 2;

			if (start < 0) {
				// ���統ǰҳ�ǵ�1ҳ�����ߵ�2ҳ����ô�Ͳ�����������
				this.start = 1;
				this.end = 5;
			}
			if (end > this.pageCount) {
				// ���統ǰҳ�ǵ�����2ҳ�������һҳ��Ҳͬ�������������������
				this.end = pageCount;
				this.start = end - 5;
			}
		}
	}

	@SuppressWarnings("rawtypes")
	public List getDatas() {
		return datas;
	}

	@SuppressWarnings("rawtypes")
	public void setDatas(List datas) {
		this.datas = datas;
	}

	public int getCurrPage() {
		return currPage;
	}

	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public int getTotals() {
		return totals;
	}

	public int getPageCount() {
		return pageCount;
	}

	public int getNextPage() {
		return nextPage;
	}

	public int getPrevPage() {
		return prevPage;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

}
