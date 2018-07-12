using System;
using System.Text.RegularExpressions;
using Controls;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace UnitTestProject1 {
    [TestClass]
    public class UnitTest1 {
        [TestMethod]
        public void TestMethod1() {
            StringAssert.StartsWith("ABC012",Ctrls.Transform("XYZ789", true));
        }
    }
}
