.class final Lsun/security/provider/certpath/CertStoreHelper$1;
.super Ljava/lang/Object;
.source "CertStoreHelper.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/provider/certpath/CertStoreHelper;->getInstance(Ljava/lang/String;)Lsun/security/provider/certpath/CertStoreHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Lsun/security/provider/certpath/CertStoreHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cl:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lsun/security/provider/certpath/CertStoreHelper$1;->val$cl:Ljava/lang/String;

    iput-object p2, p0, Lsun/security/provider/certpath/CertStoreHelper$1;->val$type:Ljava/lang/String;

    .line 79
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
    .line 80
    invoke-virtual {p0}, Lsun/security/provider/certpath/CertStoreHelper$1;->run()Lsun/security/provider/certpath/CertStoreHelper;

    move-result-object v0

    return-object v0
.end method

.method public run()Lsun/security/provider/certpath/CertStoreHelper;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 82
    :try_start_0
    iget-object v3, p0, Lsun/security/provider/certpath/CertStoreHelper$1;->val$cl:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 84
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/provider/certpath/CertStoreHelper;

    .line 85
    .local v1, "csh":Lsun/security/provider/certpath/CertStoreHelper;
    invoke-static {}, Lsun/security/provider/certpath/CertStoreHelper;->-get0()Lsun/security/util/Cache;

    move-result-object v3

    iget-object v4, p0, Lsun/security/provider/certpath/CertStoreHelper$1;->val$type:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lsun/security/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_17} :catch_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_17} :catch_18

    .line 86
    return-object v1

    .line 88
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "csh":Lsun/security/provider/certpath/CertStoreHelper;
    :catch_18
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method
