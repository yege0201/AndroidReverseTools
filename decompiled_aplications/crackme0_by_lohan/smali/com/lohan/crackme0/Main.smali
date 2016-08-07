.class public Lcom/lohan/crackme0/Main;
.super Landroid/app/Activity;
.source "Main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static generateHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 29
    .local v0, m:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 30
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getMobileID()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/lohan/crackme0/Main;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 38
    .local v1, mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, imei:Ljava/lang/String;
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 46
    :pswitch_0
    const v4, 0x7f050002

    invoke-virtual {p0, v4}, Lcom/lohan/crackme0/Main;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 47
    .local v1, et:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, serial:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/lohan/crackme0/Main;->validateSerial(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 50
    const-string v4, "Invalid serial!"

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 53
    :cond_0
    const-string v4, "Thanks for purchasing!"

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 54
    const v4, 0x7f050001

    invoke-virtual {p0, v4}, Lcom/lohan/crackme0/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 55
    .local v0, btn:Landroid/widget/Button;
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 56
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 57
    const/high16 v4, 0x7f05

    invoke-virtual {p0, v4}, Lcom/lohan/crackme0/Main;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 58
    .local v3, tv:Landroid/widget/TextView;
    const-string v4, "PRO VERSION!"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x7f050001
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/lohan/crackme0/Main;->setContentView(I)V

    .line 22
    const v1, 0x7f050001

    invoke-virtual {p0, v1}, Lcom/lohan/crackme0/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 23
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    return-void
.end method

.method public validateSerial(Ljava/lang/String;)I
    .locals 2
    .parameter "serial"

    .prologue
    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/lohan/crackme0/Main;->getMobileID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lohan/crackme0/Main;->generateHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const/4 v1, 0x1

    .line 73
    :goto_0
    return v1

    .line 69
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 70
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
