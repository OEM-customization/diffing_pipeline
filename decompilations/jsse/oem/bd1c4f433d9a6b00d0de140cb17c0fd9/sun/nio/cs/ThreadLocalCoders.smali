.class public Lsun/nio/cs/ThreadLocalCoders;
.super Ljava/lang/Object;
.source "ThreadLocalCoders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/cs/ThreadLocalCoders$1;,
        Lsun/nio/cs/ThreadLocalCoders$2;,
        Lsun/nio/cs/ThreadLocalCoders$Cache;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x3

.field private static decoderCache:Lsun/nio/cs/ThreadLocalCoders$Cache;

.field private static encoderCache:Lsun/nio/cs/ThreadLocalCoders$Cache;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x3

    .line 88
    new-instance v0, Lsun/nio/cs/ThreadLocalCoders$1;

    invoke-direct {v0, v1}, Lsun/nio/cs/ThreadLocalCoders$1;-><init>(I)V

    sput-object v0, Lsun/nio/cs/ThreadLocalCoders;->decoderCache:Lsun/nio/cs/ThreadLocalCoders$Cache;

    .line 112
    new-instance v0, Lsun/nio/cs/ThreadLocalCoders$2;

    invoke-direct {v0, v1}, Lsun/nio/cs/ThreadLocalCoders$2;-><init>(I)V

    sput-object v0, Lsun/nio/cs/ThreadLocalCoders;->encoderCache:Lsun/nio/cs/ThreadLocalCoders$Cache;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetDecoder;
    .registers 3
    .param p0, "name"    # Ljava/lang/Object;

    .prologue
    .line 107
    sget-object v1, Lsun/nio/cs/ThreadLocalCoders;->decoderCache:Lsun/nio/cs/ThreadLocalCoders$Cache;

    invoke-virtual {v1, p0}, Lsun/nio/cs/ThreadLocalCoders$Cache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetDecoder;

    .line 108
    .local v0, "cd":Ljava/nio/charset/CharsetDecoder;
    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 109
    return-object v0
.end method

.method public static encoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetEncoder;
    .registers 3
    .param p0, "name"    # Ljava/lang/Object;

    .prologue
    .line 131
    sget-object v1, Lsun/nio/cs/ThreadLocalCoders;->encoderCache:Lsun/nio/cs/ThreadLocalCoders$Cache;

    invoke-virtual {v1, p0}, Lsun/nio/cs/ThreadLocalCoders$Cache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetEncoder;

    .line 132
    .local v0, "ce":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 133
    return-object v0
.end method
