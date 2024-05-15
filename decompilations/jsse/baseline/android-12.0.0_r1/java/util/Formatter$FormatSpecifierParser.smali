.class Ljava/util/Formatter$FormatSpecifierParser;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatSpecifierParser"
.end annotation


# static fields
.field private static final greylist-max-o FLAGS:Ljava/lang/String; = ",-(+# 0<"


# instance fields
.field private greylist-max-o conv:Ljava/lang/String;

.field private greylist-max-o cursor:I

.field private greylist-max-o flags:Ljava/lang/String;

.field private final greylist-max-o format:Ljava/lang/String;

.field private greylist-max-o fs:Ljava/util/Formatter$FormatSpecifier;

.field private greylist-max-o index:Ljava/lang/String;

.field private greylist-max-o precision:Ljava/lang/String;

.field private greylist-max-o tT:Ljava/lang/String;

.field final synthetic blacklist this$0:Ljava/util/Formatter;

.field private greylist-max-o width:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/util/Formatter;Ljava/lang/String;I)V
    .registers 13
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "startIdx"    # I

    .line 2584
    iput-object p1, p0, Ljava/util/Formatter$FormatSpecifierParser;->this$0:Ljava/util/Formatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2585
    iput-object p2, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    .line 2586
    iput p3, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    .line 2588
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextIsInt()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2589
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextInt()Ljava/lang/String;

    move-result-object v0

    .line 2590
    .local v0, "nint":Ljava/lang/String;
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()C

    move-result v1

    const/16 v2, 0x24

    if-ne v1, v2, :cond_21

    .line 2591
    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->index:Ljava/lang/String;

    .line 2592
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    goto :goto_34

    .line 2593
    :cond_21
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_32

    .line 2595
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/Formatter$FormatSpecifierParser;->back(I)V

    goto :goto_34

    .line 2598
    :cond_32
    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->width:Ljava/lang/String;

    .line 2602
    .end local v0    # "nint":Ljava/lang/String;
    :cond_34
    :goto_34
    const-string v0, ""

    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->flags:Ljava/lang/String;

    .line 2603
    :goto_38
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->width:Ljava/lang/String;

    if-nez v0, :cond_60

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()C

    move-result v0

    const-string v1, ",-(+# 0<"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_60

    .line 2604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->flags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->flags:Ljava/lang/String;

    goto :goto_38

    .line 2607
    :cond_60
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->width:Ljava/lang/String;

    if-nez v0, :cond_70

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextIsInt()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 2608
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextInt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->width:Ljava/lang/String;

    .line 2611
    :cond_70
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_92

    .line 2612
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    .line 2613
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextIsInt()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 2616
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextInt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->precision:Ljava/lang/String;

    goto :goto_92

    .line 2614
    :cond_88
    new-instance p1, Ljava/util/IllegalFormatPrecisionException;

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()C

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw p1

    .line 2619
    :cond_92
    :goto_92
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()C

    move-result v0

    const/16 v1, 0x74

    if-eq v0, v1, :cond_a2

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()C

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_ac

    .line 2620
    :cond_a2
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->tT:Ljava/lang/String;

    .line 2623
    :cond_ac
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->conv:Ljava/lang/String;

    .line 2625
    new-instance v0, Ljava/util/Formatter$FormatSpecifier;

    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifierParser;->index:Ljava/lang/String;

    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifierParser;->flags:Ljava/lang/String;

    iget-object v5, p0, Ljava/util/Formatter$FormatSpecifierParser;->width:Ljava/lang/String;

    iget-object v6, p0, Ljava/util/Formatter$FormatSpecifierParser;->precision:Ljava/lang/String;

    iget-object v7, p0, Ljava/util/Formatter$FormatSpecifierParser;->tT:Ljava/lang/String;

    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifierParser;->conv:Ljava/lang/String;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Ljava/util/Formatter$FormatSpecifier;-><init>(Ljava/util/Formatter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->fs:Ljava/util/Formatter$FormatSpecifier;

    .line 2626
    return-void
.end method

.method private greylist-max-o advance()C
    .registers 4

    .line 2648
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->isEnd()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2651
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 2649
    :cond_13
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    const-string v1, "End of String"

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o back(I)V
    .registers 3
    .param p1, "len"    # I

    .line 2655
    iget v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    sub-int/2addr v0, p1

    iput v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    .line 2656
    return-void
.end method

.method private greylist-max-o isEnd()Z
    .registers 3

    .line 2659
    iget v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private greylist-max-o nextInt()Ljava/lang/String;
    .registers 4

    .line 2629
    iget v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    .line 2630
    .local v0, "strBegin":I
    :goto_2
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextIsInt()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2631
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    goto :goto_2

    .line 2633
    :cond_c
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    iget v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o nextIsInt()Z
    .registers 2

    .line 2637
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->isEnd()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private greylist-max-o peek()C
    .registers 3

    .line 2641
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->isEnd()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2644
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 2642
    :cond_f
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    const-string v1, "End of String"

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist-max-o getEndIdx()I
    .registers 2

    .line 2667
    iget v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    return v0
.end method

.method public greylist-max-o getFormatSpecifier()Ljava/util/Formatter$FormatSpecifier;
    .registers 2

    .line 2663
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->fs:Ljava/util/Formatter$FormatSpecifier;

    return-object v0
.end method
