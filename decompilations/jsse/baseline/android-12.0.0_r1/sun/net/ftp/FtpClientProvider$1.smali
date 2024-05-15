.class Lsun/net/ftp/FtpClientProvider$1;
.super Ljava/lang/Object;
.source "FtpClientProvider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/net/ftp/FtpClientProvider;->provider()Lsun/net/ftp/FtpClientProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 145
    # invokes: Lsun/net/ftp/FtpClientProvider;->loadProviderFromProperty()Z
    invoke-static {}, Lsun/net/ftp/FtpClientProvider;->access$000()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 146
    # getter for: Lsun/net/ftp/FtpClientProvider;->provider:Lsun/net/ftp/FtpClientProvider;
    invoke-static {}, Lsun/net/ftp/FtpClientProvider;->access$100()Lsun/net/ftp/FtpClientProvider;

    move-result-object v0

    return-object v0

    .line 148
    :cond_b
    # invokes: Lsun/net/ftp/FtpClientProvider;->loadProviderAsService()Z
    invoke-static {}, Lsun/net/ftp/FtpClientProvider;->access$200()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 149
    # getter for: Lsun/net/ftp/FtpClientProvider;->provider:Lsun/net/ftp/FtpClientProvider;
    invoke-static {}, Lsun/net/ftp/FtpClientProvider;->access$100()Lsun/net/ftp/FtpClientProvider;

    move-result-object v0

    return-object v0

    .line 151
    :cond_16
    new-instance v0, Lsun/net/ftp/impl/DefaultFtpClientProvider;

    invoke-direct {v0}, Lsun/net/ftp/impl/DefaultFtpClientProvider;-><init>()V

    # setter for: Lsun/net/ftp/FtpClientProvider;->provider:Lsun/net/ftp/FtpClientProvider;
    invoke-static {v0}, Lsun/net/ftp/FtpClientProvider;->access$102(Lsun/net/ftp/FtpClientProvider;)Lsun/net/ftp/FtpClientProvider;

    .line 152
    # getter for: Lsun/net/ftp/FtpClientProvider;->provider:Lsun/net/ftp/FtpClientProvider;
    invoke-static {}, Lsun/net/ftp/FtpClientProvider;->access$100()Lsun/net/ftp/FtpClientProvider;

    move-result-object v0

    return-object v0
.end method
