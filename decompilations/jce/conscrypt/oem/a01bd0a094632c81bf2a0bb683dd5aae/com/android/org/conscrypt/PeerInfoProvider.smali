.class abstract Lcom/android/org/conscrypt/PeerInfoProvider;
.super Ljava/lang/Object;
.source "PeerInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/PeerInfoProvider$1;
    }
.end annotation


# static fields
.field private static final NULL_PEER_INFO_PROVIDER:Lcom/android/org/conscrypt/PeerInfoProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    new-instance v0, Lcom/android/org/conscrypt/PeerInfoProvider$1;

    invoke-direct {v0}, Lcom/android/org/conscrypt/PeerInfoProvider$1;-><init>()V

    sput-object v0, Lcom/android/org/conscrypt/PeerInfoProvider;->NULL_PEER_INFO_PROVIDER:Lcom/android/org/conscrypt/PeerInfoProvider;

    .line 21
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static forHostAndPort(Ljava/lang/String;I)Lcom/android/org/conscrypt/PeerInfoProvider;
    .registers 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .prologue
    .line 61
    new-instance v0, Lcom/android/org/conscrypt/PeerInfoProvider$2;

    invoke-direct {v0, p0, p1}, Lcom/android/org/conscrypt/PeerInfoProvider$2;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method static nullProvider()Lcom/android/org/conscrypt/PeerInfoProvider;
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/org/conscrypt/PeerInfoProvider;->NULL_PEER_INFO_PROVIDER:Lcom/android/org/conscrypt/PeerInfoProvider;

    return-object v0
.end method


# virtual methods
.method abstract getHostname()Ljava/lang/String;
.end method

.method abstract getHostnameOrIP()Ljava/lang/String;
.end method

.method abstract getPort()I
.end method
