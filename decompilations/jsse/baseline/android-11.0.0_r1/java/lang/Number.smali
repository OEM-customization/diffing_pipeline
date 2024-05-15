.class public abstract Ljava/lang/Number;
.super Ljava/lang/Object;
.source "Number.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final whitelist serialVersionUID:J = -0x79536ae2f46b1f75L


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api byteValue()B
    .registers 2

    .line 104
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public abstract whitelist core-platform-api test-api doubleValue()D
.end method

.method public abstract whitelist core-platform-api test-api floatValue()F
.end method

.method public abstract whitelist core-platform-api test-api intValue()I
.end method

.method public abstract whitelist core-platform-api test-api longValue()J
.end method

.method public whitelist core-platform-api test-api shortValue()S
    .registers 2

    .line 119
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method
