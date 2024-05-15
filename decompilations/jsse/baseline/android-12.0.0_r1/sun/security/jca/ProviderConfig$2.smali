.class Lsun/security/jca/ProviderConfig$2;
.super Ljava/lang/Object;
.source "ProviderConfig.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/jca/ProviderConfig;->doLoadProvider()Ljava/security/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/security/Provider;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lsun/security/jca/ProviderConfig;


# direct methods
.method constructor blacklist <init>(Lsun/security/jca/ProviderConfig;)V
    .registers 2
    .param p1, "this$0"    # Lsun/security/jca/ProviderConfig;

    .line 206
    iput-object p1, p0, Lsun/security/jca/ProviderConfig$2;->this$0:Lsun/security/jca/ProviderConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 206
    invoke-virtual {p0}, Lsun/security/jca/ProviderConfig$2;->run()Ljava/security/Provider;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/security/Provider;
    .registers 7

    .line 208
    # getter for: Lsun/security/jca/ProviderConfig;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/jca/ProviderConfig;->access$000()Lsun/security/util/Debug;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 209
    # getter for: Lsun/security/jca/ProviderConfig;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/jca/ProviderConfig;->access$000()Lsun/security/util/Debug;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun/security/jca/ProviderConfig$2;->this$0:Lsun/security/jca/ProviderConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 215
    :cond_20
    :try_start_20
    iget-object v0, p0, Lsun/security/jca/ProviderConfig$2;->this$0:Lsun/security/jca/ProviderConfig;

    # getter for: Lsun/security/jca/ProviderConfig;->className:Ljava/lang/String;
    invoke-static {v0}, Lsun/security/jca/ProviderConfig;->access$100(Lsun/security/jca/ProviderConfig;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    # invokes: Lsun/security/jca/ProviderConfig;->initProvider(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/security/Provider;
    invoke-static {v0, v1, v2}, Lsun/security/jca/ProviderConfig;->access$200(Lsun/security/jca/ProviderConfig;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/security/Provider;

    move-result-object v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_30} :catch_31

    return-object v0

    .line 216
    :catch_31
    move-exception v0

    .line 219
    .local v0, "e1":Ljava/lang/Exception;
    :try_start_32
    iget-object v1, p0, Lsun/security/jca/ProviderConfig$2;->this$0:Lsun/security/jca/ProviderConfig;

    # getter for: Lsun/security/jca/ProviderConfig;->className:Ljava/lang/String;
    invoke-static {v1}, Lsun/security/jca/ProviderConfig;->access$100(Lsun/security/jca/ProviderConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    # invokes: Lsun/security/jca/ProviderConfig;->initProvider(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/security/Provider;
    invoke-static {v1, v2, v3}, Lsun/security/jca/ProviderConfig;->access$200(Lsun/security/jca/ProviderConfig;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/security/Provider;

    move-result-object v1
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_40} :catch_41

    return-object v1

    .line 220
    :catch_41
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/Exception;
    instance-of v2, v1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v2, :cond_4e

    .line 223
    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .local v2, "t":Ljava/lang/Throwable;
    goto :goto_4f

    .line 225
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_4e
    move-object v2, v1

    .line 227
    .restart local v2    # "t":Ljava/lang/Throwable;
    :goto_4f
    # getter for: Lsun/security/jca/ProviderConfig;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/jca/ProviderConfig;->access$000()Lsun/security/util/Debug;

    move-result-object v3

    if-eqz v3, :cond_72

    .line 228
    # getter for: Lsun/security/jca/ProviderConfig;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/jca/ProviderConfig;->access$000()Lsun/security/util/Debug;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lsun/security/jca/ProviderConfig$2;->this$0:Lsun/security/jca/ProviderConfig;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 232
    :cond_72
    instance-of v3, v2, Ljava/security/ProviderException;

    if-nez v3, :cond_81

    .line 236
    instance-of v3, v2, Ljava/lang/UnsupportedOperationException;

    if-eqz v3, :cond_7f

    .line 237
    iget-object v3, p0, Lsun/security/jca/ProviderConfig$2;->this$0:Lsun/security/jca/ProviderConfig;

    # invokes: Lsun/security/jca/ProviderConfig;->disableLoad()V
    invoke-static {v3}, Lsun/security/jca/ProviderConfig;->access$300(Lsun/security/jca/ProviderConfig;)V

    .line 239
    :cond_7f
    const/4 v3, 0x0

    return-object v3

    .line 233
    :cond_81
    move-object v3, v2

    check-cast v3, Ljava/security/ProviderException;

    throw v3
.end method
