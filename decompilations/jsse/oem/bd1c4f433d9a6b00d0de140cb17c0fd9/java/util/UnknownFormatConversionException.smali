.class public Ljava/util/UnknownFormatConversionException;
.super Ljava/util/IllegalFormatException;
.source "UnknownFormatConversionException.java"


# static fields
.field private static final serialVersionUID:J = 0x122d6c2L


# instance fields
.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    .line 50
    if-nez p1, :cond_b

    .line 51
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52
    :cond_b
    iput-object p1, p0, Ljava/util/UnknownFormatConversionException;->s:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public getConversion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Ljava/util/UnknownFormatConversionException;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 5

    .prologue
    .line 66
    const-string/jumbo v0, "Conversion = \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/UnknownFormatConversionException;->s:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method