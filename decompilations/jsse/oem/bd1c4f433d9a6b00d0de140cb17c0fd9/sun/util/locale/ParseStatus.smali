.class public Lsun/util/locale/ParseStatus;
.super Ljava/lang/Object;
.source "ParseStatus.java"


# instance fields
.field errorIndex:I

.field errorMsg:Ljava/lang/String;

.field parseLength:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0}, Lsun/util/locale/ParseStatus;->reset()V

    .line 41
    return-void
.end method


# virtual methods
.method public getErrorIndex()I
    .registers 2

    .prologue
    .line 54
    iget v0, p0, Lsun/util/locale/ParseStatus;->errorIndex:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lsun/util/locale/ParseStatus;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getParseLength()I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lsun/util/locale/ParseStatus;->parseLength:I

    return v0
.end method

.method public isError()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 50
    iget v1, p0, Lsun/util/locale/ParseStatus;->errorIndex:I

    if-ltz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lsun/util/locale/ParseStatus;->parseLength:I

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lsun/util/locale/ParseStatus;->errorIndex:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/util/locale/ParseStatus;->errorMsg:Ljava/lang/String;

    .line 47
    return-void
.end method
