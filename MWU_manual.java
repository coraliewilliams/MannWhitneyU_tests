
// system imports
import java.util.Date;
import java.util.Calendar;
import org.w3c.dom.Document;


// Your custom imports:
import org.apache.commons.math3.stat.inference.MannWhitneyUTest;
import java.util.logging.Logger;

// system variables
public class JSnippet extends AbstractJSnippet {

// Your custom variables:

// expression start
    public void snippet() throws TypeException, ColumnException, Abort {

// Enter your code here:
MannWhitneyUTest mannWhitneyUTest = new MannWhitneyUTest();

//data1
double[] x = {-3,0,-5,2,2,5,-1,-2,-5,4,-7,3,0,-2};
double[] y = {-9,-6,-2,-2};


//data2
double[] x2 = {-12,-22,-1,2,-2,-11,-3,2,-4,-1,2,8,4,1};
double[] y2 = {-25,-4,-8,-15};

MannWhitneyUTest myTest = new MannWhitneyUTest();

try{
	System.out.println("result pvalue: "+myTest.mannWhitneyU(x, y));
	System.out.println("result pvalue: "+myTest.mannWhitneyUTest(x, y));
	
	System.out.println("result pvalue: "+myTest.mannWhitneyUTest(x, y));
	
	Logger log = Logger.getGlobal();
	
	logError("result pvalue2:"+myTest.mannWhitneyU(x2, y2));
	logError("result pvalue2:"+myTest.mannWhitneyUTest(x2,y2));
	
	logError("result pvalue2:"+myTest.mannWhitneyUTest(x2, y2));
}
catch(Exception e){}
