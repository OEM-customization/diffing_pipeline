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
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/security/KeyStore;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Ljava/security/KeyStore$Builder$2;

.field final synthetic val$protection:Ljava/security/KeyStore$ProtectionParameter;

.field final synthetic val$provider:Ljava/security/Provider;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/security/KeyStore$Builder$2;Ljava/security/Provider;Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 5
    .param p1, "this$2"    # Ljava/security/KeyStore$Builder$2;

    .prologue
    .line 1
    iput-object p1, p0, Ljava/security/KeyStore$Builder$2$1;->this$2:Ljava/security/KeyStore$Builder$2;

    iput-object p2, p0, Ljava/security/KeyStore$Builder$2$1;->val$provider:Ljava/security/Provider;

    iput-object p3, p0, Ljava/security/KeyStore$Builder$2$1;->val$type:Ljava/lang/String;

    iput-object p4, p0, Ljava/security/KeyStore$Builder$2$1;->val$protection:Ljava/security/KeyStore$ProtectionParameter;

    .line 1957
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
    .line 1959
    invoke-virtual {p0}, Ljava/security/KeyStore$Builder$2$1;->run()Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/security/KeyStore;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1961
    iget-object v4, p0, Ljava/security/KeyStore$Builder$2$1;->val$provider:Ljava/security/Provider;

    if-nez v4, :cond_21

    .line 1962
    iget-object v4, p0, Ljava/security/KeyStore$Builder$2$1;->val$type:Ljava/lang/String;

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 1966
    .local v1, "ks":Ljava/security/KeyStore;
    :goto_a
    new-instance v2, Ljava/security/KeyStore$SimpleLoadStoreParameter;

    iget-object v4, p0, Ljava/security/KeyStore$Builder$2$1;->val$protection:Ljava/security/KeyStore$ProtectionParameter;

    invoke-direct {v2, v4}, Ljava/security/KeyStore$SimpleLoadStoreParameter;-><init>(Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1967
    .local v2, "param":Ljava/security/KeyStore$LoadStoreParameter;
    iget-object v4, p0, Ljava/security/KeyStore$Builder$2$1;->val$protection:Ljava/security/KeyStore$ProtectionParameter;

    instance-of v4, v4, Ljava/security/KeyStore$CallbackHandlerProtection;

    if-nez v4, :cond_2a

    .line 1968
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1990
    :goto_1a
    iget-object v4, p0, Ljava/security/KeyStore$Builder$2$1;->this$2:Ljava/security/KeyStore$Builder$2;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/security/KeyStore$Builder$2;->-set0(Ljava/security/KeyStore$Builder$2;Z)Z

    .line 1991
    return-object v1

    .line 1964
    .end local v1    # "ks":Ljava/security/KeyStore;
    .end local v2    # "param":Ljava/security/KeyStore$LoadStoreParameter;
    :cond_21
    iget-object v4, p0, Ljava/security/KeyStore$Builder$2$1;->val$type:Ljava/lang/String;

    iget-object v5, p0, Ljava/security/KeyStore$Builder$2$1;->val$provider:Ljava/security/Provider;

    invoke-static {v4, v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    move-result-object v1

    .restart local v1    # "ks":Ljava/security/KeyStore;
    goto :goto_a

    .line 1972
    .restart local v2    # "param":Ljava/security/KeyStore$LoadStoreParameter;
    :cond_2a
    const/4 v3, 0x0

    .line 1974
    .local v3, "tries":I
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    .line 1976
    :try_start_2d
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_1a

    .line 1978
    :catch_31
    move-exception v0

    .line 1979
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/security/UnrecoverableKeyException;

    if-eqz v4, :cond_42

    .line 1980
    const/4 v4, 0x3

    if-lt v3, v4, :cond_2b

    .line 1983
    iget-object v4, p0, Ljava/security/KeyStore$Builder$2$1;->this$2:Ljava/security/KeyStore$Builder$2;

    invoke-static {v4, v0}, Ljava/security/KeyStore$Builder$2;->-set1(Ljava/security/KeyStore$Builder$2;Ljava/io/IOException;)Ljava/io/IOException;

    .line 1986
    :cond_42
    throw v0
.end method
