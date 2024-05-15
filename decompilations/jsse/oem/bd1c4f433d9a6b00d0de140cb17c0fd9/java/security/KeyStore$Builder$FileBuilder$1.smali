.class Ljava/security/KeyStore$Builder$FileBuilder$1;
.super Ljava/lang/Object;
.source "KeyStore.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/security/KeyStore$Builder$FileBuilder;->getKeyStore()Ljava/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/security/KeyStore;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Ljava/security/KeyStore$Builder$FileBuilder;


# direct methods
.method constructor <init>(Ljava/security/KeyStore$Builder$FileBuilder;)V
    .registers 2
    .param p1, "this$2"    # Ljava/security/KeyStore$Builder$FileBuilder;

    .prologue
    .line 1
    iput-object p1, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$2:Ljava/security/KeyStore$Builder$FileBuilder;

    .line 1835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1836
    invoke-virtual {p0}, Ljava/security/KeyStore$Builder$FileBuilder$1;->run()Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/security/KeyStore;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1837
    iget-object v2, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$2:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v2}, Ljava/security/KeyStore$Builder$FileBuilder;->-get1(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v2

    instance-of v2, v2, Ljava/security/KeyStore$CallbackHandlerProtection;

    if-nez v2, :cond_f

    .line 1838
    invoke-virtual {p0}, Ljava/security/KeyStore$Builder$FileBuilder$1;->run0()Ljava/security/KeyStore;

    move-result-object v2

    return-object v2

    .line 1842
    :cond_f
    const/4 v1, 0x0

    .line 1844
    .local v1, "tries":I
    :cond_10
    add-int/lit8 v1, v1, 0x1

    .line 1846
    :try_start_12
    invoke-virtual {p0}, Ljava/security/KeyStore$Builder$FileBuilder$1;->run0()Ljava/security/KeyStore;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_17

    move-result-object v2

    return-object v2

    .line 1847
    :catch_17
    move-exception v0

    .line 1848
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x3

    if-ge v1, v2, :cond_23

    .line 1849
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/UnrecoverableKeyException;

    .line 1848
    if-nez v2, :cond_10

    .line 1852
    :cond_23
    throw v0
.end method

.method public run0()Ljava/security/KeyStore;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1858
    iget-object v6, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$2:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v6}, Ljava/security/KeyStore$Builder$FileBuilder;->-get2(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/Provider;

    move-result-object v6

    if-nez v6, :cond_49

    .line 1859
    iget-object v6, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$2:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v6}, Ljava/security/KeyStore$Builder$FileBuilder;->-get3(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 1863
    .local v4, "ks":Ljava/security/KeyStore;
    :goto_12
    const/4 v2, 0x0

    .line 1864
    .local v2, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 1866
    .local v5, "password":[C
    :try_start_14
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v6, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$2:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v6}, Ljava/security/KeyStore$Builder$FileBuilder;->-get0(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/io/File;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_b8

    .line 1867
    .local v3, "in":Ljava/io/InputStream;
    :try_start_1f
    iget-object v6, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$2:Ljava/security/KeyStore$Builder$FileBuilder;

    .end local v2    # "in":Ljava/io/InputStream;
    invoke-static {v6}, Ljava/security/KeyStore$Builder$FileBuilder;->-get1(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v6

    instance-of v6, v6, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v6, :cond_5a

    .line 1869
    iget-object v6, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$2:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v6}, Ljava/security/KeyStore$Builder$FileBuilder;->-get1(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v6

    check-cast v6, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {v6}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v5

    .line 1870
    .local v5, "password":[C
    iget-object v6, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$2:Ljava/security/KeyStore$Builder$FileBuilder;

    iget-object v7, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$2:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v7}, Ljava/security/KeyStore$Builder$FileBuilder;->-get1(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/security/KeyStore$Builder$FileBuilder;->-set0(Ljava/security/KeyStore$Builder$FileBuilder;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$ProtectionParameter;

    .line 1887
    :goto_40
    invoke-virtual {v4, v3, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_43
    .catchall {:try_start_1f .. :try_end_43} :catchall_a2

    .line 1890
    if-eqz v3, :cond_48

    .line 1891
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1888
    :cond_48
    return-object v4

    .line 1861
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "ks":Ljava/security/KeyStore;
    .end local v5    # "password":[C
    :cond_49
    iget-object v6, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$2:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v6}, Ljava/security/KeyStore$Builder$FileBuilder;->-get3(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$2:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v7}, Ljava/security/KeyStore$Builder$FileBuilder;->-get2(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/Provider;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    move-result-object v4

    .restart local v4    # "ks":Ljava/security/KeyStore;
    goto :goto_12

    .line 1873
    .restart local v3    # "in":Ljava/io/InputStream;
    .local v5, "password":[C
    :cond_5a
    :try_start_5a
    iget-object v6, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$2:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v6}, Ljava/security/KeyStore$Builder$FileBuilder;->-get1(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v6

    check-cast v6, Ljava/security/KeyStore$CallbackHandlerProtection;

    invoke-virtual {v6}, Ljava/security/KeyStore$CallbackHandlerProtection;->getCallbackHandler()Ljavax/security/auth/callback/CallbackHandler;

    move-result-object v1

    .line 1875
    .local v1, "handler":Ljavax/security/auth/callback/CallbackHandler;
    new-instance v0, Ljavax/security/auth/callback/PasswordCallback;

    .line 1876
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Password for keystore "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$2:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v7}, Ljava/security/KeyStore$Builder$FileBuilder;->-get0(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1877
    const/4 v7, 0x0

    .line 1875
    invoke-direct {v0, v6, v7}, Ljavax/security/auth/callback/PasswordCallback;-><init>(Ljava/lang/String;Z)V

    .line 1878
    .local v0, "callback":Ljavax/security/auth/callback/PasswordCallback;
    const/4 v6, 0x1

    new-array v6, v6, [Ljavax/security/auth/callback/Callback;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-interface {v1, v6}, Ljavax/security/auth/callback/CallbackHandler;->handle([Ljavax/security/auth/callback/Callback;)V

    .line 1879
    invoke-virtual {v0}, Ljavax/security/auth/callback/PasswordCallback;->getPassword()[C

    move-result-object v5

    .line 1880
    .local v5, "password":[C
    if-nez v5, :cond_aa

    .line 1881
    new-instance v6, Ljava/security/KeyStoreException;

    const-string/jumbo v7, "No password provided"

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_a2
    .catchall {:try_start_5a .. :try_end_a2} :catchall_a2

    .line 1889
    .end local v0    # "callback":Ljavax/security/auth/callback/PasswordCallback;
    .end local v1    # "handler":Ljavax/security/auth/callback/CallbackHandler;
    .end local v5    # "password":[C
    :catchall_a2
    move-exception v6

    move-object v2, v3

    .line 1890
    .end local v3    # "in":Ljava/io/InputStream;
    :goto_a4
    if-eqz v2, :cond_a9

    .line 1891
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1889
    :cond_a9
    throw v6

    .line 1884
    .restart local v0    # "callback":Ljavax/security/auth/callback/PasswordCallback;
    .restart local v1    # "handler":Ljavax/security/auth/callback/CallbackHandler;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v5    # "password":[C
    :cond_aa
    :try_start_aa
    invoke-virtual {v0}, Ljavax/security/auth/callback/PasswordCallback;->clearPassword()V

    .line 1885
    iget-object v6, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$2:Ljava/security/KeyStore$Builder$FileBuilder;

    new-instance v7, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v7, v5}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-static {v6, v7}, Ljava/security/KeyStore$Builder$FileBuilder;->-set0(Ljava/security/KeyStore$Builder$FileBuilder;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$ProtectionParameter;
    :try_end_b7
    .catchall {:try_start_aa .. :try_end_b7} :catchall_a2

    goto :goto_40

    .line 1889
    .end local v0    # "callback":Ljavax/security/auth/callback/PasswordCallback;
    .end local v1    # "handler":Ljavax/security/auth/callback/CallbackHandler;
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    .local v5, "password":[C
    :catchall_b8
    move-exception v6

    goto :goto_a4
.end method
