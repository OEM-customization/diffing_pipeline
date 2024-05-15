.class final Lsun/security/jca/ProviderList$3;
.super Ljava/lang/Object;
.source "ProviderList.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/jca/ProviderList;->fromSecurityProperties()Lsun/security/jca/ProviderList;
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
        "Lsun/security/jca/ProviderList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lsun/security/jca/ProviderList$3;->run()Lsun/security/jca/ProviderList;

    move-result-object v0

    return-object v0
.end method

.method public run()Lsun/security/jca/ProviderList;
    .registers 3

    .prologue
    .line 86
    new-instance v0, Lsun/security/jca/ProviderList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsun/security/jca/ProviderList;-><init>(Lsun/security/jca/ProviderList;)V

    return-object v0
.end method
