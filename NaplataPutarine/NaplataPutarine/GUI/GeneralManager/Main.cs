using NaplataPutarine.GUI.TollStationChief.Forms;
using NaplataPutarine.Login;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using NaplataPutarine.Core.Users.Models;

namespace NaplataPutarine.GUI.GeneralManager
{
    internal partial class Main : Form
    {
        private Radnik _logged;
        public Main(Radnik  logged)
        {
            _logged = logged;
            InitializeComponent();
        }

        private void EarningsReportButton_Click(object sender, EventArgs e)
        {
            new EarningsReport(null).Show();
        }

        private void Main_FormClosing(object sender, FormClosingEventArgs e)
        {
            Hide();
            new LoginPage().Show();
        }

        private void pricelistCheckButton_Click(object sender, EventArgs e)
        {
            new PricelistCheck().Show();
        }
    }
}
