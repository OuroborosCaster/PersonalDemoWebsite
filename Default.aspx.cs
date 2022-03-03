using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

public partial class _Default : System.Web.UI.Page
{
    string[] ArrBaseInfo = new string[4]
    {
        "First name: Yanpei",
        "Fimaly name: YANG",
        "Age: 20",
        "Nationality: China"
    };
    string[] ArrLanguage = new string[4]
    {
        "Chinese (Native proficiency)",
        "English (Professional working proficiency)",
        "Japanese (A little bit)",
        "Malay (A little bit)"
    };
    string[] ArrProgramming = new string[6]
    {
        "C++",
        "Java",
        "PHP",
        "MySql",
        "ASP.NET",
        "C#"
    };

    protected void Page_PreRender(object sender, EventArgs e)
    {
        blBaseInfo.DataSource = ArrBaseInfo;
        blBaseInfo.DataBind();
        blLanguage.DataSource = ArrLanguage;
        blLanguage.DataBind();
        blProgramming.DataSource = ArrProgramming;
        blProgramming.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnHome_Click(object sender, EventArgs e)
    {
        mvMenu.ActiveViewIndex = 0;
        btnHome.ForeColor = Color.WhiteSmoke;
        btnMore.ForeColor = Color.Silver;
        btnContact.ForeColor = Color.Silver;
        btnDonate.ForeColor = Color.Silver;

    }

    protected void btnMore_Click(object sender, EventArgs e)
    {
        mvMenu.ActiveViewIndex = 1;
        btnMore.ForeColor = Color.WhiteSmoke;
        btnHome.ForeColor = Color.Silver;
        btnContact.ForeColor = Color.Silver;
        btnDonate.ForeColor = Color.Silver;
    }

    protected void btnContact_Click(object sender, EventArgs e)
    {
        mvMenu.ActiveViewIndex = 2;
        btnContact.ForeColor = Color.WhiteSmoke;
        btnHome.ForeColor = Color.Silver;
        btnMore.ForeColor = Color.Silver;
        btnDonate.ForeColor = Color.Silver;
    }

    protected void btnDonate_Click(object sender, EventArgs e)
    {
        mvMenu.ActiveViewIndex = 3;
        btnDonate.ForeColor = Color.WhiteSmoke;
        btnHome.ForeColor = Color.Silver;
        btnMore.ForeColor = Color.Silver;
        btnContact.ForeColor = Color.Silver;
    }

    protected void cldAge_SelectionChanged(object sender, EventArgs e)
    {
        int age = int.Parse(DateTime.Now.Year.ToString()) - int.Parse(cldAge.SelectedDate.Year.ToString());
        if (DateTime.Now.DayOfYear < cldAge.SelectedDate.DayOfYear)
        {
            age--;
        }
        tbAge.Text = age.ToString();
    }

    protected void ddlMethod_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(ddlMethod.SelectedValue=="Tel NO.")
        {
            tbContact.TextMode = TextBoxMode.Number;
        }
        else
        {
            tbContact.TextMode = TextBoxMode.Email;
        }
    }
    protected void cbUnderstand_CheckedChanged(object sender, EventArgs e)
    {
        if (cbUnderstand.Checked)
            btnSubmit.Enabled = true;
        else
            btnSubmit.Enabled = false;
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string comment= "Name: " + tbName.Text + System.Environment.NewLine + "Gender: " + rblGender.SelectedValue + System.Environment.NewLine + "Age: " + tbAge.Text + System.Environment.NewLine + "Contact details(" + ddlMethod.SelectedValue+"): "+tbContact.Text + System.Environment.NewLine + "Comment: " + tbComment.Text + System.Environment.NewLine + System.Environment.NewLine;
        FileStream fs = new FileStream(Server.MapPath("Comment.txt"), FileMode.Append);
        StreamWriter sw = new StreamWriter(fs);
        sw.Write(comment);
        sw.Flush();
        sw.Close();
        fs.Close();
    }

    protected void ibHome_Click(object sender, ImageClickEventArgs e)
    {
        lblUN.Visible = true;
        lblPW.Visible = true;
        tbUN.Visible = true;
        tbPW.Visible = true;
        btnLogin.Visible = true;
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (tbUN.Text == "INTIWeb"&&tbPW.Text=="prg3204")
        {
            lblMessage.Text = "You're in.";
            btnDownload.Visible = true;
        }
        else
        {
            lblMessage.Text = "Wrong username or password.";
        }
    }

    protected void btnDownload_Click(object sender, EventArgs e)
    {
        string fileName = "Comment.txt";
        string filePath = Server.MapPath("Comment.txt");
        FileStream fs = new FileStream(filePath, FileMode.Open);
        byte[] bytes = new byte[(int)fs.Length];
        fs.Read(bytes, 0, bytes.Length);
        fs.Close();
        Response.ContentType = "application/octet-stream";      
        Response.AddHeader("Content-Disposition", "attachment; filename=" + HttpUtility.UrlEncode(fileName, System.Text.Encoding.UTF8));
        Response.BinaryWrite(bytes);
        Response.Flush();
        Response.End();
    }
}