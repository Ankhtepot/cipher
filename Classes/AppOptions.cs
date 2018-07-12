using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
//Class with App settings
namespace Data { //App options storage
    public static class AppOptions {
        private static ICipher cryptingMethod;
        private static int keyValue;

        public static ICipher CryptingMethod { get => cryptingMethod; set => cryptingMethod = value; }
        public static int KeyValue { get => keyValue; set => keyValue = value; }
    }
}
