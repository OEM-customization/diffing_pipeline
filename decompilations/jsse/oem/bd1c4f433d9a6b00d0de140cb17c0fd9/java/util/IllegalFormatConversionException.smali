.class public Ljava/util/IllegalFormatConversionException;
.super Ljava/util/IllegalFormatException;
.source "IllegalFormatConversionException.java"


# static fields
.field private static final serialVersionUID:J = 0x10366beL


# instance fields
.field private arg:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private c:C


# direct methods
.method public constructor <init>(CLjava/lang/Class;)V
    .registers 4
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "arg":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    .line 56
    if-nez p2, :cond_b

    .line 57
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58
    :cond_b
    iput-char p1, p0, Ljava/util/IllegalFormatConversionException;->c:C

    .line 59
    iput-object p2, p0, Ljava/util/IllegalFormatConversionException;->arg:Ljava/lang/Class;

    .line 60
    return-void
.end method


# virtual methods
.method public getArgumentClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Ljava/util/IllegalFormatConversionException;->arg:Ljava/lang/Class;

    return-object v0
.end method

.method public getConversion()C
    .registers 2

    .prologue
    .line 68
    iget-char v0, p0, Ljava/util/IllegalFormatConversionException;->c:C

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 5

    .prologue
    .line 82
    const-string/jumbo v0, "%c != %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-char v2, p0, Ljava/util/IllegalFormatConversionException;->c:C

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Ljava/util/IllegalFormatConversionException;->arg:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
