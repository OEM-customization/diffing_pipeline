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
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/security/KeyStore;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/security/KeyStore$Builder$FileBuilder;


# direct methods
.method constructor blacklist <init>(Ljava/security/KeyStore$Builder$FileBuilder;)V
    .registers 2
    .param p1, "this$0"    # Ljava/security/KeyStore$Builder$FileBuilder;

    .line 1835
    iput-object p1, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$0:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1835
    invoke-virtual {p0}, Ljava/security/KeyStore$Builder$FileBuilder$1;->run()Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/security/KeyStore;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1837
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$0:Ljava/security/KeyStore$Builder$FileBuilder;

    # getter for: Ljava/security/KeyStore$Builder$FileBuilder;->protection:Ljava/security/KeyStore$ProtectionParameter;
    invoke-static {v0}, Ljava/security/KeyStore$Builder$FileBuilder;->access$100(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v0

    instance-of v0, v0, Ljava/security/KeyStore$CallbackHandlerProtection;

    if-nez v0, :cond_f

    .line 1838
    invoke-virtual {p0}, Ljava/security/KeyStore$Builder$FileBuilder$1;->run0()Ljava/security/KeyStore;

    move-result-object v0

    return-object v0

    .line 1842
    :cond_f
    const/4 v0, 0x0

    .line 1844
    .local v0, "tries":I
    :goto_10
    add-int/lit8 v0, v0, 0x1

    .line 1846
    :try_start_12
    invoke-virtual {p0}, Ljava/security/KeyStore$Builder$FileBuilder$1;->run0()Ljava/security/KeyStore;

    move-result-object v1
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_16} :catch_17

    return-object v1

    .line 1847
    :catch_17
    move-exception v1

    .line 1848
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x3

    if-ge v0, v2, :cond_24

    .line 1849
    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/UnrecoverableKeyException;

    if-eqz v2, :cond_24

    .line 1850
    goto :goto_10

    .line 1852
    :cond_24
    throw v1
.end method

.method public blacklist run0()Ljava/security/KeyStore;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1858
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$0:Ljava/security/KeyStore$Builder$FileBuilder;

    # getter for: Ljava/security/KeyStore$Builder$FileBuilder;->provider:Ljava/security/Provider;
    invoke-static {v0}, Ljava/security/KeyStore$Builder$FileBuilder;->access$200(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_13

    .line 1859
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$0:Ljava/security/KeyStore$Builder$FileBuilder;

    # getter for: Ljava/security/KeyStore$Builder$FileBuilder;->type:Ljava/lang/String;
    invoke-static {v0}, Ljava/security/KeyStore$Builder$FileBuilder;->access$300(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .local v0, "ks":Ljava/security/KeyStore;
    goto :goto_23

    .line 1861
    .end local v0    # "ks":Ljava/security/KeyStore;
    :cond_13
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$0:Ljava/security/KeyStore$Builder$FileBuilder;

    # getter for: Ljava/security/KeyStore$Builder$FileBuilder;->type:Ljava/lang/String;
    invoke-static {v0}, Ljava/security/KeyStore$Builder$FileBuilder;->access$300(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$0:Ljava/security/KeyStore$Builder$FileBuilder;

    # getter for: Ljava/security/KeyStore$Builder$FileBuilder;->provider:Ljava/security/Provider;
    invoke-static {v1}, Ljava/security/KeyStore$Builder$FileBuilder;->access$200(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    move-result-object v0

    .line 1863
    .restart local v0    # "ks":Ljava/security/KeyStore;
    :goto_23
    const/4 v1, 0x0

    .line 1864
    .local v1, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 1866
    .local v2, "password":[C
    :try_start_25
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$0:Ljava/security/KeyStore$Builder$FileBuilder;

    # getter for: Ljava/security/KeyStore$Builder$FileBuilder;->file:Ljava/io/File;
    invoke-static {v4}, Ljava/security/KeyStore$Builder$FileBuilder;->access$400(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 1867
    iget-object v3, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$0:Ljava/security/KeyStore$Builder$FileBuilder;

    # getter for: Ljava/security/KeyStore$Builder$FileBuilder;->protection:Ljava/security/KeyStore$ProtectionParameter;
    invoke-static {v3}, Ljava/security/KeyStore$Builder$FileBuilder;->access$100(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v3

    instance-of v3, v3, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v3, :cond_52

    .line 1868
    iget-object v3, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$0:Ljava/security/KeyStore$Builder$FileBuilder;

    .line 1869
    # getter for: Ljava/security/KeyStore$Builder$FileBuilder;->protection:Ljava/security/KeyStore$ProtectionParameter;
    invoke-static {v3}, Ljava/security/KeyStore$Builder$FileBuilder;->access$100(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v3

    check-cast v3, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {v3}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v3

    move-object v2, v3

    .line 1870
    iget-object v3, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$0:Ljava/security/KeyStore$Builder$FileBuilder;

    # getter for: Ljava/security/KeyStore$Builder$FileBuilder;->protection:Ljava/security/KeyStore$ProtectionParameter;
    invoke-static {v3}, Ljava/security/KeyStore$Builder$FileBuilder;->access$100(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v4

    # setter for: Ljava/security/KeyStore$Builder$FileBuilder;->keyProtection:Ljava/security/KeyStore$ProtectionParameter;
    invoke-static {v3, v4}, Ljava/security/KeyStore$Builder$FileBuilder;->access$502(Ljava/security/KeyStore$Builder$FileBuilder;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$ProtectionParameter;

    goto :goto_9b

    .line 1872
    :cond_52
    iget-object v3, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$0:Ljava/security/KeyStore$Builder$FileBuilder;

    .line 1873
    # getter for: Ljava/security/KeyStore$Builder$FileBuilder;->protection:Ljava/security/KeyStore$ProtectionParameter;
    invoke-static {v3}, Ljava/security/KeyStore$Builder$FileBuilder;->access$100(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v3

    check-cast v3, Ljava/security/KeyStore$CallbackHandlerProtection;

    .line 1874
    invoke-virtual {v3}, Ljava/security/KeyStore$CallbackHandlerProtection;->getCallbackHandler()Ljavax/security/auth/callback/CallbackHandler;

    move-result-object v3

    .line 1875
    .local v3, "handler":Ljavax/security/auth/callback/CallbackHandler;
    new-instance v4, Ljavax/security/auth/callback/PasswordCallback;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Password for keystore "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$0:Ljava/security/KeyStore$Builder$FileBuilder;

    .line 1876
    # getter for: Ljava/security/KeyStore$Builder$FileBuilder;->file:Ljava/io/File;
    invoke-static {v6}, Ljava/security/KeyStore$Builder$FileBuilder;->access$400(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljavax/security/auth/callback/PasswordCallback;-><init>(Ljava/lang/String;Z)V

    .line 1878
    .local v4, "callback":Ljavax/security/auth/callback/PasswordCallback;
    const/4 v5, 0x1

    new-array v5, v5, [Ljavax/security/auth/callback/Callback;

    aput-object v4, v5, v6

    invoke-interface {v3, v5}, Ljavax/security/auth/callback/CallbackHandler;->handle([Ljavax/security/auth/callback/Callback;)V

    .line 1879
    invoke-virtual {v4}, Ljavax/security/auth/callback/PasswordCallback;->getPassword()[C

    move-result-object v5

    move-object v2, v5

    .line 1880
    if-eqz v2, :cond_a4

    .line 1884
    invoke-virtual {v4}, Ljavax/security/auth/callback/PasswordCallback;->clearPassword()V

    .line 1885
    iget-object v5, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$0:Ljava/security/KeyStore$Builder$FileBuilder;

    new-instance v6, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v6, v2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    # setter for: Ljava/security/KeyStore$Builder$FileBuilder;->keyProtection:Ljava/security/KeyStore$ProtectionParameter;
    invoke-static {v5, v6}, Ljava/security/KeyStore$Builder$FileBuilder;->access$502(Ljava/security/KeyStore$Builder$FileBuilder;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$ProtectionParameter;

    .line 1887
    .end local v3    # "handler":Ljavax/security/auth/callback/CallbackHandler;
    .end local v4    # "callback":Ljavax/security/auth/callback/PasswordCallback;
    :goto_9b
    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_9e
    .catchall {:try_start_25 .. :try_end_9e} :catchall_ac

    .line 1888
    nop

    .line 1890
    nop

    .line 1891
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1888
    return-object v0

    .line 1881
    .restart local v3    # "handler":Ljavax/security/auth/callback/CallbackHandler;
    .restart local v4    # "callback":Ljavax/security/auth/callback/PasswordCallback;
    :cond_a4
    :try_start_a4
    new-instance v5, Ljava/security/KeyStoreException;

    const-string v6, "No password provided"

    invoke-direct {v5, v6}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ks":Ljava/security/KeyStore;
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "password":[C
    .end local p0    # "this":Ljava/security/KeyStore$Builder$FileBuilder$1;
    throw v5
    :try_end_ac
    .catchall {:try_start_a4 .. :try_end_ac} :catchall_ac

    .line 1890
    .end local v3    # "handler":Ljavax/security/auth/callback/CallbackHandler;
    .end local v4    # "callback":Ljavax/security/auth/callback/PasswordCallback;
    .restart local v0    # "ks":Ljava/security/KeyStore;
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "password":[C
    .restart local p0    # "this":Ljava/security/KeyStore$Builder$FileBuilder$1;
    :catchall_ac
    move-exception v3

    if-eqz v1, :cond_b2

    .line 1891
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1893
    :cond_b2
    throw v3
.end method