.class public Lcom/android/org/bouncycastle/util/Longs;
.super Ljava/lang/Object;
.source "Longs.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist reverse(J)J
    .registers 4
    .param p0, "i"    # J

    .line 11
    invoke-static {p0, p1}, Ljava/lang/Long;->reverse(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist reverseBytes(J)J
    .registers 4
    .param p0, "i"    # J

    .line 16
    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist rotateLeft(JI)J
    .registers 5
    .param p0, "i"    # J
    .param p2, "distance"    # I

    .line 21
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist rotateRight(JI)J
    .registers 5
    .param p0, "i"    # J
    .param p2, "distance"    # I

    .line 26
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist valueOf(J)Ljava/lang/Long;
    .registers 3
    .param p0, "value"    # J

    .line 31
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
