.class Ljava/security/KeyStore$Builder$2$1;
.super Ljava/lang/Object;
.source "KeyStore.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore$Builder$2;
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
.field final synthetic blacklist this$0:Ljava/security/KeyStore$Builder$2;


# direct methods
.method constructor blacklist <init>(Ljava/security/KeyStore$Builder$2;)V
    .registers 2
    .param p1, "this$0"    # Ljava/security/KeyStore$Builder$2;

    .line 1957
    iput-object p1, p0, Ljava/security/KeyStore$Builder$2$1;->this$0:Ljava/security/KeyStore$Builder$2;

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

    .line 1957
    invoke-virtual {p0}, Ljava/security/KeyStore$Builder$2$1;->run()Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/security/KeyStore;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1961
    iget-object v0, p0, Ljava/security/KeyStore$Builder$2$1;->this$0:Ljava/security/KeyStore$Builder$2;

    iget-object v0, v0, Ljava/security/KeyStore$Builder$2;->val$provider:Ljava/security/Provider;

    if-nez v0, :cond_f

    .line 1962
    iget-object v0, p0, Ljava/security/KeyStore$Builder$2$1;->this$0:Ljava/security/KeyStore$Builder$2;

    iget-object v0, v0, Ljava/security/KeyStore$Builder$2;->val$type:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .local v0, "ks":Ljava/security/KeyStore;
    goto :goto_1b

    .line 1964
    .end local v0    # "ks":Ljava/security/KeyStore;
    :cond_f
    iget-object v0, p0, Ljava/security/KeyStore$Builder$2$1;->this$0:Ljava/security/KeyStore$Builder$2;

    iget-object v0, v0, Ljava/security/KeyStore$Builder$2;->val$type:Ljava/lang/String;

    iget-object v1, p0, Ljava/security/KeyStore$Builder$2$1;->this$0:Ljava/security/KeyStore$Builder$2;

    iget-object v1, v1, Ljava/security/KeyStore$Builder$2;->val$provider:Ljava/security/Provider;

    invoke-static {v0, v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    move-result-object v0

    .line 1966
    .restart local v0    # "ks":Ljava/security/KeyStore;
    :goto_1b
    new-instance v1, Ljava/security/KeyStore$SimpleLoadStoreParameter;

    iget-object v2, p0, Ljava/security/KeyStore$Builder$2$1;->this$0:Ljava/security/KeyStore$Builder$2;

    iget-object v2, v2, Ljava/security/KeyStore$Builder$2;->val$protection:Ljava/security/KeyStore$ProtectionParameter;

    invoke-direct {v1, v2}, Ljava/security/KeyStore$SimpleLoadStoreParameter;-><init>(Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1967
    .local v1, "param":Ljava/security/KeyStore$LoadStoreParameter;
    iget-object v2, p0, Ljava/security/KeyStore$Builder$2$1;->this$0:Ljava/security/KeyStore$Builder$2;

    iget-object v2, v2, Ljava/security/KeyStore$Builder$2;->val$protection:Ljava/security/KeyStore$ProtectionParameter;

    instance-of v2, v2, Ljava/security/KeyStore$CallbackHandlerProtection;

    const/4 v3, 0x1

    if-nez v2, :cond_31

    .line 1968
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    goto :goto_37

    .line 1972
    :cond_31
    const/4 v2, 0x0

    .line 1974
    .local v2, "tries":I
    :goto_32
    add-int/2addr v2, v3

    .line 1976
    :try_start_33
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_3d

    .line 1977
    nop

    .line 1990
    .end local v2    # "tries":I
    :goto_37
    iget-object v2, p0, Ljava/security/KeyStore$Builder$2$1;->this$0:Ljava/security/KeyStore$Builder$2;

    # setter for: Ljava/security/KeyStore$Builder$2;->getCalled:Z
    invoke-static {v2, v3}, Ljava/security/KeyStore$Builder$2;->access$702(Ljava/security/KeyStore$Builder$2;Z)Z

    .line 1991
    return-object v0

    .line 1978
    .restart local v2    # "tries":I
    :catch_3d
    move-exception v4

    .line 1979
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljava/security/UnrecoverableKeyException;

    if-eqz v5, :cond_4f

    .line 1980
    const/4 v5, 0x3

    if-ge v2, v5, :cond_4a

    .line 1981
    goto :goto_32

    .line 1983
    :cond_4a
    iget-object v3, p0, Ljava/security/KeyStore$Builder$2$1;->this$0:Ljava/security/KeyStore$Builder$2;

    # setter for: Ljava/security/KeyStore$Builder$2;->oldException:Ljava/io/IOException;
    invoke-static {v3, v4}, Ljava/security/KeyStore$Builder$2;->access$602(Ljava/security/KeyStore$Builder$2;Ljava/io/IOException;)Ljava/io/IOException;

    .line 1986
    :cond_4f
    throw v4
.end method
