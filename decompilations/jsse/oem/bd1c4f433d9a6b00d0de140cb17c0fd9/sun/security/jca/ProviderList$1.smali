.class final Lsun/security/jca/ProviderList$1;
.super Ljava/security/Provider;
.source "ProviderList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/jca/ProviderList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xffa6e84ca1e2bc5L


# direct methods
.method constructor <init>(Ljava/lang/String;DLjava/lang/String;)V
    .registers 5
    .param p1, "$anonymous0"    # Ljava/lang/String;
    .param p2, "$anonymous1"    # D
    .param p4, "$anonymous2"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method
