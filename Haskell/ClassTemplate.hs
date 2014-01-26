package assignment3;

public class Matrix3x3Flat {
    private long a0,a1,a2,a3,a4,a5,a6,a7,a8;
    private InvalidArrayLengthException Error;

    public Matrix3x3Flat(long[] array) throws InvalidArrayLengthException {
        if(array.length == 9){
            a0 = array[0];
            a1 = array[1];
            a2 = array[2];
            a3 = array[3];
            a4 = array[4];
            a5 = array[5];
            a6 = array[6];
            a7 = array[7];
            a8 = array[8];
        }
        else {
            throw new InvalidArrayLengthException(Error);
        }
    }

    public long determinant(){
        return  (this.a0 * ((this.a4 * this.a8) - (this.a5 * this.a7))) -
          		(this.a1 * ((this.a3 * this.a8) - (this.a5 * this.a6))) +
        		(this.a2 * ((this.a3 * this.a7) - (this.a4 * this.a6)));
    }
}