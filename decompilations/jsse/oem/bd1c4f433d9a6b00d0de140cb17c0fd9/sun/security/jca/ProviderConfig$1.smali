.class Lsun/security/jca/ProviderConfig$1;
.super Ljava/lang/Object;
.source "ProviderConfig.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/jca/ProviderConfig;->checkSunPKCS11Solaris()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/security/jca/ProviderConfig;


# direct methods
.method constructor <init>(Lsun/security/jca/ProviderConfig;)V
    .registers 2
    .param p1, "this$0"    # Lsun/security/jca/ProviderConfig;

    .prologue
    .line 1
    iput-object p1, p0, Lsun/security/jca/ProviderConfig$1;->this$0:Lsun/security/jca/ProviderConfig;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .registers 4

    .prologue
    .line 105
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/usr/lib/libpkcs11.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_11

    .line 107
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    .line 109
    :cond_11
    const-string/jumbo v1, "false"

    .line 110
    const-string/jumbo v2, "sun.security.pkcs11.enable-solaris"

    .line 109
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 111
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    .line 113
    :cond_24
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lsun/security/jca/ProviderConfig$1;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method