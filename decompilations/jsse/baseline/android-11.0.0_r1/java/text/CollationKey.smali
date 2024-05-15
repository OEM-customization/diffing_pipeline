.class public abstract Ljava/text/CollationKey;
.super Ljava/lang/Object;
.source "CollationKey.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljava/text/CollationKey;",
        ">;"
    }
.end annotation


# instance fields
.field private final greylist-max-o source:Ljava/lang/String;


# direct methods
.method protected constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "source"    # Ljava/lang/String;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    if-eqz p1, :cond_8

    .line 145
    iput-object p1, p0, Ljava/text/CollationKey;->source:Ljava/lang/String;

    .line 146
    return-void

    .line 143
    :cond_8
    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public bridge synthetic whitelist core-platform-api test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 100
    check-cast p1, Ljava/text/CollationKey;

    invoke-virtual {p0, p1}, Ljava/text/CollationKey;->compareTo(Ljava/text/CollationKey;)I

    move-result p1

    return p1
.end method

.method public abstract whitelist core-platform-api test-api compareTo(Ljava/text/CollationKey;)I
.end method

.method public whitelist core-platform-api test-api getSourceString()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Ljava/text/CollationKey;->source:Ljava/lang/String;

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api toByteArray()[B
.end method
