.class final Lsun/net/ftp/FtpClientProvider$1;
.super Ljava/lang/Object;
.source "FtpClientProvider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/net/ftp/FtpClientProvider;->provider()Lsun/net/ftp/FtpClientProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 145
    invoke-static {}, Lsun/net/ftp/FtpClientProvider;->-wrap1()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 146
    invoke-static {}, Lsun/net/ftp/FtpClientProvider;->-get0()Lsun/net/ftp/FtpClientProvider;

    move-result-object v0

    return-object v0

    .line 148
    :cond_b
    invoke-static {}, Lsun/net/ftp/FtpClientProvider;->-wrap0()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 149
    invoke-static {}, Lsun/net/ftp/FtpClientProvider;->-get0()Lsun/net/ftp/FtpClientProvider;

    move-result-object v0

    return-object v0

    .line 151
    :cond_16
    new-instance v0, Lsun/net/ftp/impl/DefaultFtpClientProvider;

    invoke-direct {v0}, Lsun/net/ftp/impl/DefaultFtpClientProvider;-><init>()V

    invoke-static {v0}, Lsun/net/ftp/FtpClientProvider;->-set0(Lsun/net/ftp/FtpClientProvider;)Lsun/net/ftp/FtpClientProvider;

    .line 152
    invoke-static {}, Lsun/net/ftp/FtpClientProvider;->-get0()Lsun/net/ftp/FtpClientProvider;

    move-result-object v0

    return-object v0
.end method
