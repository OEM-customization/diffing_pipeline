.class public Ljava/util/IllegalFormatCodePointException;
.super Ljava/util/IllegalFormatException;
.source "IllegalFormatCodePointException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x12325b6L


# instance fields
.field private greylist-max-o c:I


# direct methods
.method public constructor whitelist core-platform-api test-api <init>(I)V
    .registers 2
    .param p1, "c"    # I

    .line 52
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    .line 53
    iput p1, p0, Ljava/util/IllegalFormatCodePointException;->c:I

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api getCodePoint()I
    .registers 2

    .line 63
    iget v0, p0, Ljava/util/IllegalFormatCodePointException;->c:I

    return v0
.end method

.method public whitelist core-platform-api test-api getMessage()Ljava/lang/String;
    .registers 4

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Ljava/util/IllegalFormatCodePointException;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Code point = %#x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
