.class public Ljava/util/MissingFormatWidthException;
.super Ljava/util/IllegalFormatException;
.source "MissingFormatWidthException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0xed6dbbL


# instance fields
.field private greylist-max-o s:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    .line 51
    if-eqz p1, :cond_8

    .line 53
    iput-object p1, p0, Ljava/util/MissingFormatWidthException;->s:Ljava/lang/String;

    .line 54
    return-void

    .line 52
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getFormatSpecifier()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Ljava/util/MissingFormatWidthException;->s:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Ljava/util/MissingFormatWidthException;->s:Ljava/lang/String;

    return-object v0
.end method
