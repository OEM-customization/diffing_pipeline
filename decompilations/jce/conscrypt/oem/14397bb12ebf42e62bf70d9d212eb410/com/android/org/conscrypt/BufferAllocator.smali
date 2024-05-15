.class public abstract Lcom/android/org/conscrypt/BufferAllocator;
.super Ljava/lang/Object;
.source "BufferAllocator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/BufferAllocator$1;
    }
.end annotation


# static fields
.field private static UNPOOLED:Lcom/android/org/conscrypt/BufferAllocator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Lcom/android/org/conscrypt/BufferAllocator$1;

    invoke-direct {v0}, Lcom/android/org/conscrypt/BufferAllocator$1;-><init>()V

    sput-object v0, Lcom/android/org/conscrypt/BufferAllocator;->UNPOOLED:Lcom/android/org/conscrypt/BufferAllocator;

    .line 25
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static unpooled()Lcom/android/org/conscrypt/BufferAllocator;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/org/conscrypt/BufferAllocator;->UNPOOLED:Lcom/android/org/conscrypt/BufferAllocator;

    return-object v0
.end method


# virtual methods
.method public abstract allocateDirectBuffer(I)Lcom/android/org/conscrypt/AllocatedBuffer;
.end method
