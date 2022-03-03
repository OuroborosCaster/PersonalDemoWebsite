<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en-us">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="page.css" rel="stylesheet" />
    <title>Personal Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>
            <asp:ImageButton ID="ibHome" runat="server" ImageUrl="~/img/icon.png" OnClick="ibHome_Click" />
            &nbsp;
                <asp:Label Font-Size="15pt" ForeColor="WhiteSmoke" ID="lblUN" runat="server" Text="Username: " Visible="false"></asp:Label><asp:TextBox ID="tbUN" Visible="false" runat="server"></asp:TextBox>
            &nbsp;
                <asp:Label Font-Size="15pt" ForeColor="WhiteSmoke" ID="lblPW" runat="server" Text="Password: " Visible="false"></asp:Label><asp:TextBox ID="tbPW" Visible="false" runat="server" TextMode="Password"></asp:TextBox>
            &nbsp;
            <asp:Button ID="btnLogin" runat="server" Text="Login" Visible="false" OnClick="btnLogin_Click" />
            &nbsp;<asp:Label ID="lblMessage" Font-Size="13pt" ForeColor="WhiteSmoke" runat="server" Text=" "></asp:Label>
            &nbsp;
            <asp:Button ID="btnDownload" runat="server" Text="Download Comments" Visible="false" OnClick="btnDownload_Click" />
        </h2>

        <div style="float: right;">
            <asp:Button ID="btnHome" runat="server" Font-Bold="true" Font-Size="16pt"
                Text="Home" ForeColor="WhiteSmoke" Width="150px" BackColor="Transparent"
                BorderColor="Transparent" OnClick="btnHome_Click" />
            <asp:Button ID="btnMore" runat="server" Font-Bold="true" Font-Size="16pt"
                Text="More" Width="150px" ForeColor="Silver" BackColor="Transparent"
                BorderColor="Transparent" OnClick="btnMore_Click" />
            <asp:Button ID="btnContact" runat="server" Font-Bold="true" Font-Size="16pt"
                Text="Contact me" Width="150px" ForeColor="Silver" BackColor="Transparent"
                BorderColor="Transparent" OnClick="btnContact_Click" />
            <asp:Button ID="btnDonate" runat="server" Font-Bold="true" Font-Size="16pt"
                Text="Donate to me" Width="150px" ForeColor="Silver" BackColor="Transparent"
                BorderColor="Transparent" OnClick="btnDonate_Click" />
        </div>
        <br />
        <div>
            <asp:MultiView ID="mvMenu" runat="server" ActiveViewIndex="0">
                <asp:View ID="vHome" runat="server">
                    <h1 style="font-size: 16pt">
                        <br />
                        <br />
                        HELLO PEOPLE, MY NAME IS<br />
                    </h1>
                    <h1 style="font-size: 50pt">YANG YANPEI<br />
                    </h1>
                    <h1 style="font-size: 16pt">CURRENT STUDENT,FUTURE SECURITY SPECIALISTS AND NETWORK ENGINEERS
                    </h1>

                </asp:View>
                <asp:View ID="vMore" runat="server">
                    <div class="info">
                        <br />
                        <br />
                        <table align="center" cellspacing="1">
                            <tr>
                                <td style="width: 500px;">
                                    <asp:Image ID="imgPhoto" runat="server" ImageUrl="~/img/photo.jpg" Width="40%" />
                                </td>
                                <td style="width: 500px;">
                                    <asp:BulletedList ID="blBaseInfo" runat="server" BulletStyle="Circle">
                                    </asp:BulletedList>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 500px;">
                                    <br />
                                    <asp:Label ID="lblLanguage" runat="server" Text="Language skill: "></asp:Label>
                                    <asp:BulletedList ID="blLanguage" runat="server" BulletStyle="CustomImage" BulletImageUrl="~/img/language.png"></asp:BulletedList>
                                </td>
                                <td style="width: 500px;">
                                    <br />
                                    <asp:Label ID="lblProgramming" runat="server" Text="Programming skill: "></asp:Label>
                                    <asp:BulletedList ID="blProgramming" runat="server" BulletStyle="CustomImage" BulletImageUrl="~/img/programming.png"></asp:BulletedList>
                                </td>
                            </tr>
                        </table>
                    </div>
                </asp:View>
                <asp:View ID="vContact" runat="server">
                    <h6 style="color: whitesmoke; font-family: 'Comic Sans MS'; font-weight: 400; font-size: 20pt; text-align: center; margin-bottom: 10px">You can contact me via</h6>
                    <div style="text-align: center">
                        <asp:HyperLink ID="hlTwitter" ImageWidth="50px" runat="server" ImageUrl="~/img/twitter.png" NavigateUrl="https://twitter.com/poipoi72630804" Target="_blank"></asp:HyperLink>
                        &nbsp;
                        &nbsp;
                        <asp:HyperLink ID="hlFacebook" runat="server" ImageWidth="50px" ImageUrl="~/img/facebook.png" NavigateUrl="https://www.facebook.com/profile.php?id=100033710269866" Target="_blank"></asp:HyperLink>
                        &nbsp;
                        &nbsp;
                        <asp:HyperLink ID="imgMail" runat="server" ImageWidth="50px" ImageUrl="~/img/mail.png" NavigateUrl="mailto:i18015438@student.newinti.edu.my" Target="_blank"></asp:HyperLink>
                    </div>
                    <h6 style="color: whitesmoke; font-family: 'Comic Sans MS'; font-weight: 400; font-size: 20pt; text-align: center; margin-bottom: 10px; margin-top: 10px">or fill the form below:
                    
                    <table align="center">
                        <tr>
                            <td>
                                <asp:Label ID="lblName" runat="server" Text="Name: " /></td>
                            <td>
                                <asp:TextBox ID="tbName" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblGender" runat="server" Text="Gender: " /></td>
                            <td>
                                <asp:RadioButtonList Font-Size="10pt" ID="rblGender" runat="server">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                    <asp:ListItem>Other</asp:ListItem>
                                    <asp:ListItem>Prefer not to say</asp:ListItem>
                                </asp:RadioButtonList></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblAge" runat="server" Text="Age: " /></td>
                            <td>
                                <asp:TextBox ID="tbAge" runat="server" TextMode="Number"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size: 15px; max-width: 150px">You can select your birthdate,system will automatically calculate your age,your birthdate will not be recorded.</td>
                            <td style="padding: 0px 50px 0px 50px">
                                <asp:Calendar ID="cldAge" runat="server" DayNameFormat="Shortest" Font-Size="10pt" ForeColor="WhiteSmoke" FirstDayOfWeek="Sunday" OnSelectionChanged="cldAge_SelectionChanged"></asp:Calendar>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblContact" runat="server" Text="Contact details: "></asp:Label></td>
                            <td>
                                <asp:DropDownList ID="ddlMethod" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlMethod_SelectedIndexChanged">
                                    <asp:ListItem>Tel NO.</asp:ListItem>
                                    <asp:ListItem>Mail</asp:ListItem>
                                </asp:DropDownList><asp:TextBox ID="tbContact" runat="server" TextMode="Number"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="font-size: 15px; max-width: 150px">Please write down your comments here: </td>
                            <td>
                                <asp:TextBox ID="tbComment" runat="server" Columns="25" Rows="5" TextMode="MultiLine"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="font-size: 20px; max-width: 300px">
                                <asp:CheckBox ID="cbUnderstand"
                                    runat="server"
                                    Text="I understand and agree that the website collects part of my personal information for non-commercial use."
                                    AutoPostBack="true"
                                    OnCheckedChanged="cbUnderstand_CheckedChanged" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="max-width: 300px">
                                <asp:Button ID="btnSubmit" runat="server" Text="Submit" Enabled="false" OnClick="btnSubmit_Click" />
                            </td>
                        </tr>
                    </table>
                    </h6>
                </asp:View>
                <asp:View ID="vDonate" runat="server">
                    <h4>
                        <asp:Image ID="imgAli" runat="server" ImageUrl="~/img/Alipay.jpg" Height="200px" Width="200px" hspace="100px" />
                        <asp:Image ID="imgWeChat" runat="server" ImageUrl="img/WeChatPay.png" Height="200px" Width="200px" hspace="100px" />
                    </h4>
                    <h3 style="font-family: 'Comic Sans MS'; margin-left: 200px; margin-right: 200px; margin-top: 10px; text-align: center; padding-left: 44px; padding-top: 0px;">
                        <asp:Label ID="lblAli" runat="server" Text="Alipay" ForeColor="WhiteSmoke" Font-Bold="true"></asp:Label>
                        <asp:Label ID="lblWechat" runat="server" Text="WeChatPay" ForeColor="WhiteSmoke" Font-Bold="true"></asp:Label>
                    </h3>
                    <h5>You can scan the QR code &uarr; to donate to me or click the advertisement &darr; to increase my income.
                    </h5>
                    <asp:Panel ID="pnlAD" runat="server">
                        <div style="display: block; position: relative; left: 50%; transform: translateX(-50%); overflow: hidden; background: none; width: 825px; height: 140px;" class="nomobile">
                            <div style="display: block; position: absolute; left: 86px; top: 35px; overflow: hidden; background: linear-gradient(to right, #091263, #51a4d3, #091263 ); width: 728px; height: 90px; box-shadow: 1px 1px 2px rgba(127,127,127,0.5),1px -1px 2px rgba(127,127,127,0.5),-1px 1px 2px rgba(127,127,127,0.5),-1px -1px 2px rgba(127,127,127,0.5);">
                                <div style="position: absolute; bottom: 50%; right: 0; width: 728px; transform: translateY(50%); color: #F2F1EB; font-size: 20px; font-weight: bolder; text-align: center; text-shadow: 0px 0px 2px black, 1px 1px 2px rgba(0,0,0,0.6);"></div>
                            </div>
                            <p>
                                <ins class="adsbygoogle" style="display: block; width: 728px; height: 90px; position: absolute; left: 86px; top: 35px" data-ad-client="ca-pub-3703762592545424" data-ad-slot="6185248135" data-adsbygoogle-status="done"><ins id="aswift_0_expand" style="display: inline-table; border: none; height: 90px; margin: 0; padding: 0; position: relative; visibility: visible; width: 728px; background-color: transparent;"><ins id="aswift_0_anchor" style="display: block; border: none; height: 90px; margin: 0; padding: 0; position: relative; visibility: visible; width: 728px; background-color: transparent;">
                                    <iframe id="aswift_0" name="aswift_0" style="left: 0; position: absolute; top: 0; border: 0; width: 728px; height: 90px;" sandbox="allow-forms allow-pointer-lock allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" width="728" height="90" frameborder="0" src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-3703762592545424&amp;output=html&amp;h=90&amp;slotname=6185248135&amp;adk=1965241214&amp;adf=3734058160&amp;w=728&amp;lmt=1592132913&amp;psa=1&amp;guci=2.2.0.0.2.2.0.0&amp;format=728x90&amp;url=https%3A%2F%2Ffgo.wiki%2Fw%2F%25E9%25A6%2596%25E9%25A1%25B5&amp;flash=0&amp;wgl=1&amp;adsid=ChAI8JWX9wUQntu7nPqlkdQHEkwAsP8R_oSC0f6HCGsCWPimqNzw30XYjnYKb4FdOxtVMRZ2Vo7I4KCROfD5BIao8vV993vcQEAbPIbyt6fJA4li68eO6jLekQx4Wvpz&amp;dt=1592132915073&amp;bpp=32&amp;bdt=796&amp;idt=369&amp;shv=r20200609&amp;cbv=r20190131&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3D0927de7b5f3ae1f5%3AT%3D1582094843%3AS%3DALNI_MZGI3yW1j-LnFWgc_6Dxg3vG271Iw&amp;crv=1&amp;correlator=1627060898600&amp;frm=20&amp;pv=2&amp;ga_vid=811772572.1546429908&amp;ga_sid=1592132915&amp;ga_hid=881314150&amp;ga_fc=0&amp;iag=0&amp;icsg=729098&amp;dssz=29&amp;mdo=0&amp;mso=0&amp;u_tz=480&amp;u_his=2&amp;u_java=0&amp;u_h=720&amp;u_w=1280&amp;u_ah=680&amp;u_aw=1280&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=5&amp;adx=379&amp;ady=773&amp;biw=1263&amp;bih=578&amp;scr_x=0&amp;scr_y=0&amp;oid=3&amp;pvsid=4118739105927173&amp;pem=673&amp;rx=0&amp;eae=0&amp;fc=640&amp;brdim=0%2C0%2C0%2C0%2C1280%2C0%2C1280%2C680%2C1280%2C578&amp;vis=1&amp;rsz=%7C%7CaEbr%7C&amp;abl=CA&amp;pfx=0&amp;fu=8208&amp;bc=31&amp;jar=2020-6-14-11&amp;ifi=1&amp;uci=a!1&amp;btvi=1&amp;fsb=1&amp;xpc=qZq4hFayUJ&amp;p=https%3A//fgo.wiki&amp;dtd=400" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" data-google-container-id="a!1" data-google-query-id="CNTo0qaVgeoCFU4DjwodTo8BbA" data-load-complete="true"></iframe>
                                </ins></ins></ins>
                                <script>
                                    (adsbygoogle = window.adsbygoogle || []).push({});
                                </script>
                            </p>
                            <div style="position: absolute; bottom: 0; left: 0px;"></div>
                            <div style="display: block; position: absolute; right: 20px; top: 10px;"><span style="border-bottom: dashed 1px #0645ad;"><a href="/w/Mooncell:%E5%B9%BF%E5%91%8A" title="Mooncell:广告"></a></span></div>
                        </div>
                    </asp:Panel>
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
