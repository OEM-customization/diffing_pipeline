.class public Ljava/util/IllformedLocaleException;
.super Ljava/lang/RuntimeException;
.source "IllformedLocaleException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x48cd7d390c1316f9L


# instance fields
.field private greylist-max-o _errIdx:I


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/IllformedLocaleException;->_errIdx:I

    .line 54
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/IllformedLocaleException;->_errIdx:I

    .line 64
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;I)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorIndex"    # I

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez p2, :cond_d

    const-string v1, ""

    goto :goto_23

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/IllformedLocaleException;->_errIdx:I

    .line 78
    iput p2, p0, Ljava/util/IllformedLocaleException;->_errIdx:I

    .line 79
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api getErrorIndex()I
    .registers 2

    .line 88
    iget v0, p0, Ljava/util/IllformedLocaleException;->_errIdx:I

    return v0
.end method
