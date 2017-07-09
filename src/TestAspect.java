import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.aspectj.lang.annotation.Around;
import java.lang.reflect.Method;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import com.itool.LoggerFactory;
import com.itool.Logger;

@Aspect
public class TestAspect {

    @Around("execution (* *(..))")
    public Object advice(ProceedingJoinPoint joinPoint) throws Throwable{
        Logger logger = LoggerFactory.getLogger();
        int index =0;
        String[] args = new String[joinPoint.getArgs().length];
        for(final Object argument : joinPoint.getArgs()){
           if(argument == null)
                  args[index++] = "null";
           else
                args[index++] = argument.toString();
        }
        Method method = ((MethodSignature) joinPoint.getSignature()).getMethod();
        Object retVal = null;
	try{
	logger.logEnter(method,args);
        retVal = joinPoint.proceed();
        logger.logExit(method);
        } catch(Exception exception){
	   System.out.println(exception);
	}
        return retVal;
    }
}

