component accessors="true" extends="controller"
{
	property beanFactory;
	
	public any function init( fw ) {
		variables.fw = fw;
		return this;
	}
	
	public void function default( rc ) {

		rc.loveLetters = getLoveLetterService().getLoveLetters();

	}
	
	public void function create( rc ) {

		rc.reportFileName = getReportGeneratorUtil().generateReport();

	}
	
}
