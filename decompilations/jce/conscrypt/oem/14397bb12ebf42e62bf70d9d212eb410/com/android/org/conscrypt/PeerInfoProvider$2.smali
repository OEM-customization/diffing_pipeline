.class final Lcom/android/org/conscrypt/PeerInfoProvider$2;
.super Lcom/android/org/conscrypt/PeerInfoProvider;
.source "PeerInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/conscrypt/PeerInfoProvider;->forHostAndPort(Ljava/lang/String;I)Lcom/android/org/conscrypt/PeerInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$port:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 1
    #disallowed odex opcode
    #iput-object-quick p1, p0, field@0x8
    nop

    #disallowed odex opcode
    #iput-quick p2, p0, field@0xc
    nop

    .line 61
    invoke-direct {p0}, Lcom/android/org/conscrypt/PeerInfoProvider;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method getHostname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x8
    nop

    return-object v0
.end method

.method public getHostnameOrIP()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x8
    nop

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 74
    #disallowed odex opcode
    #iget-quick v0, p0, field@0xc
    nop

    return v0
.end method
