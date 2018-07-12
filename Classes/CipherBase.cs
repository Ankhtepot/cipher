using System;

namespace Data { //base class for crypting methods
    public abstract class CipherBase : ICipher
    {
        private String name;
        private Boolean hasKey;        

        public string Name { get => name; set => name = value; }
        public bool HasKey { get => hasKey; set => hasKey = value; }

        public abstract string DeCipher(string code);
        public abstract string Cipher(string text);

    }
}
