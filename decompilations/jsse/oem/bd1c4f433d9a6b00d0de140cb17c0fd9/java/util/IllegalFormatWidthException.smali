.class public Ljava/util/IllegalFormatWidthException;
.super Ljava/util/IllegalFormatException;
.source "IllegalFormatWidthException.java"


# static fields
.field private static final serialVersionUID:J = 0xfe39a6L


# instance fields
.field private w:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "w"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    .line 47
    iput p1, p0, Ljava/util/IllegalFormatWidthException;->w:I

    .line 48
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Ljava/util/IllegalFormatWidthException;->w:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Ljava/util/IllegalFormatWidthException;->w:I

    return v0
.end method