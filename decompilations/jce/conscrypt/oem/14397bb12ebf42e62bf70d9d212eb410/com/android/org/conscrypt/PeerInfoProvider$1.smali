.class final Lcom/android/org/conscrypt/PeerInfoProvider$1;
.super Lcom/android/org/conscrypt/PeerInfoProvider;
.source "PeerInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/PeerInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/org/conscrypt/PeerInfoProvider;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method getHostname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHostnameOrIP()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 35
    const/4 v0, -0x1

    return v0
.end method
