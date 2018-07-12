using Controls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace CipherOmatik {
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window {
        public MainWindow() {
            InitializeComponent();

            //AppOptions default setting
            SetAppOptionsCryptingMethod(1);

            //settings of controlls
            RbMorse.IsChecked = true;
            //BuCipher.Content = Properties.Resources.crypt17x24;

            //Methods for controlls
            BuCipher.Click += BuCipher_Click;
            BuDecipher.Click += BuDecipher_Click;
            BuExit.Click += BuExit_Click;
            RbMorse.Click += RbMorse_Click;
            RbCaesar.Click += RbCaesar_Click;
            NudKey.ValueChanged += NudKey_ValueChanged;
            BuReset.Click += BuReset_Click;
            BuToInput.Click += BuToInput_Click;
        }

        //placeholder controlls methods
        private void BuToInput_Click(object sender, EventArgs e) {
            MoveResultToInput();
        }

        private void BuReset_Click(object sender, EventArgs e) {
            ResetTBs();
        }

        private void NudKey_ValueChanged(object sender, EventArgs e) {
            SetKeyValue((int)NudKey.Value);
        }

        private void RbCaesar_Click(object sender, EventArgs e) {
            SetAppOptionsCryptingMethod(2);
        }

        private void RbMorse_Click(object sender, EventArgs e) {
            SetAppOptionsCryptingMethod(1);
        }

        private void BuDecipher_Click(object sender, EventArgs e) {
            Cipher(false);
        }

        private void BuExit_Click(object sender, EventArgs e) {
            if (Ctrls.ExitCheck()) Application.Current.Shutdown();
            else MessageBox.Show("Cant exit right now");
        }

        private void BuCipher_Click(object o, EventArgs e) {
            Cipher(true);
        }

        //executive methods
        private void Cipher(Boolean cipherDirection) {
            TbResult.Text = Ctrls.Transform(TbInput.Text, cipherDirection);
        }

        private void SetAppOptionsCryptingMethod(int newValue) {
            Ctrls.SetAppOptionsCryptingMethod(newValue);
            if (Ctrls.KeyCryptingMethod()) {
                LbKey.Content = AppOptions.LbKeyText;
                NudKey.Visibility = AppOptions.NudKeyVisible ? Visibility.Visible : Visibility.Hidden;
                NudKey.Minimum = AppOptions.NudKeyMinimum;
                NudKey.Maximum = AppOptions.NudKeyMaximum;
            } else {
                LbKey.Content = AppOptions.LbKeyText;
                NudKey.Visibility = Visibility.Hidden;
            }
        }

        private void SetKeyValue(int value) {
            Ctrls.SetKeyValue(value);
        }

        private void ResetTBs() {
            TbInput.Text = "";
            TbResult.Text = "";
        }

        private void MoveResultToInput() {
            TbInput.Text = TbResult.Text;
            TbResult.Text = "";
        }
    }
}
