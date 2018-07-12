using System;

namespace Data {   //Interface to ensure crypting classes can serve theyr purpose
    public interface ICipher 
    {
        String Cipher(String text);
        String DeCipher(String code);
    }
}
