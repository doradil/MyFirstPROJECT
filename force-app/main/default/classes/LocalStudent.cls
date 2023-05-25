public class LocalStudent extends Student {

    public Integer seatId;

    public LocalStudent(){
 //call parent class constructor 
 // to reuse its functionality
 //if we dont call super()explicity
 //compiler will automatically insert super()
 //on the first line of any constractor
 //IT MUST BE ONLY ON THE FIRST LINE
 //super();
//  this.firstName='LocalUnknown';
//  this.lastName='LocalUnknown';
//  this.studentId= 100;

   super('LocalUnknown','LocalUnknown',100);    
 System.debug('Local Student no param constructor'); 


    }
    public LocalStudent(String firstName, String lastName, Integer studentId, Integer seatId){

        // this.firstName  = firstName ; 
        // this.lastName  = lastName ; 
        // this.studentId  = studentId ; 
        super(firstName,lastName,studentId);
        this.seatId  = seatId ; 
        
    }
}