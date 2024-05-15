.class public final Lcom/android/org/conscrypt/Conscrypt$Constants;
.super Ljava/lang/Object;
.source "Conscrypt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/Conscrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Constants"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static maxEncryptedPacketLength()I
    .registers 1

    .prologue
    .line 106
    const/16 v0, 0x4145

    return v0
.end method
