.class public abstract Ljava/text/CollationKey;
.super Ljava/lang/Object;
.source "CollationKey.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/text/CollationKey;",
        ">;"
    }
.end annotation


# instance fields
.field private final source:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    if-nez p1, :cond_b

    .line 143
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 145
    :cond_b
    iput-object p1, p0, Ljava/text/CollationKey;->source:Ljava/lang/String;

    .line 146
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 101
    check-cast p1, Ljava/text/CollationKey;

    invoke-virtual {p0, p1}, Ljava/text/CollationKey;->compareTo(Ljava/text/CollationKey;)I

    move-result v0

    return v0
.end method

.method public abstract compareTo(Ljava/text/CollationKey;)I
.end method

.method public getSourceString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Ljava/text/CollationKey;->source:Ljava/lang/String;

    return-object v0
.end method

.method public abstract toByteArray()[B
.end method
