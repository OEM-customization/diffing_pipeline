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
.field private static final FLAGS:Ljava/lang/String; = ",-(+# 0<"


# instance fields
.field private conv:Ljava/lang/String;

.field private cursor:I

.field private flags:Ljava/lang/String;

.field private final format:Ljava/lang/String;

.field private fs:Ljava/util/Formatter$FormatSpecifier;

.field private index:Ljava/lang/String;

.field private precision:Ljava/lang/String;

.field private tT:Ljava/lang/String;

.field final synthetic this$0:Ljava/util/Formatter;

.field private width:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Formatter;Ljava/lang/String;I)V
    .registers 13
    .param p1, "this$0"    # Ljava/util/Formatter;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "startIdx"    # I

    .prologue
    const/4 v2, 0x0

    .line 2583
    iput-object p1, p0, Ljava/util/Formatter$FormatSpecifierParser;->this$0:Ljava/util/Formatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2584
    iput-object p2, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    .line 2585
    iput p3, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    .line 2587
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextIsInt()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2588
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextInt()Ljava/lang/String;

    move-result-object v8

    .line 2589
    .local v8, "nint":Ljava/lang/String;
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()C

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_51

    .line 2590
    iput-object v8, p0, Ljava/util/Formatter$FormatSpecifierParser;->index:Ljava/lang/String;

    .line 2591
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    .line 2601
    .end local v8    # "nint":Ljava/lang/String;
    :cond_21
    :goto_21
    const-string/jumbo v0, ""

    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->flags:Ljava/lang/String;

    .line 2602
    :goto_26
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->width:Ljava/lang/String;

    if-nez v0, :cond_64

    const-string/jumbo v0, ",-(+# 0<"

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_64

    .line 2603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->flags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->flags:Ljava/lang/String;

    goto :goto_26

    .line 2592
    .restart local v8    # "nint":Ljava/lang/String;
    :cond_51
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_61

    .line 2594
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifierParser;->back(I)V

    goto :goto_21

    .line 2597
    :cond_61
    iput-object v8, p0, Ljava/util/Formatter$FormatSpecifierParser;->width:Ljava/lang/String;

    goto :goto_21

    .line 2606
    .end local v8    # "nint":Ljava/lang/String;
    :cond_64
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->width:Ljava/lang/String;

    if-nez v0, :cond_74

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextIsInt()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 2607
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextInt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->width:Ljava/lang/String;

    .line 2610
    :cond_74
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_95

    .line 2611
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    .line 2612
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextIsInt()Z

    move-result v0

    if-nez v0, :cond_8f

    .line 2613
    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()C

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v0

    .line 2615
    :cond_8f
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextInt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->precision:Ljava/lang/String;

    .line 2618
    :cond_95
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()C

    move-result v0

    const/16 v1, 0x74

    if-eq v0, v1, :cond_a5

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()C

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_af

    .line 2619
    :cond_a5
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->tT:Ljava/lang/String;

    .line 2622
    :cond_af
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->conv:Ljava/lang/String;

    .line 2624
    new-instance v0, Ljava/util/Formatter$FormatSpecifier;

    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->index:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifierParser;->flags:Ljava/lang/String;

    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifierParser;->width:Ljava/lang/String;

    iget-object v5, p0, Ljava/util/Formatter$FormatSpecifierParser;->precision:Ljava/lang/String;

    iget-object v6, p0, Ljava/util/Formatter$FormatSpecifierParser;->tT:Ljava/lang/String;

    iget-object v7, p0, Ljava/util/Formatter$FormatSpecifierParser;->conv:Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/Formatter$FormatSpecifier;-><init>(Ljava/util/Formatter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->fs:Ljava/util/Formatter$FormatSpecifier;

    .line 2625
    return-void
.end method

.method private advance()C
    .registers 4

    .prologue
    .line 2647
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->isEnd()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2648
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    const-string/jumbo v1, "End of String"

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2650
    :cond_f
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private back(I)V
    .registers 3
    .param p1, "len"    # I

    .prologue
    .line 2654
    iget v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    sub-int/2addr v0, p1

    iput v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    .line 2655
    return-void
.end method

.method private isEnd()Z
    .registers 3

    .prologue
    .line 2658
    iget v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private nextInt()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2628
    iget v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    .line 2629
    .local v0, "strBegin":I
    :goto_2
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextIsInt()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2630
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    goto :goto_2

    .line 2632
    :cond_c
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    iget v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private nextIsInt()Z
    .registers 2

    .prologue
    .line 2636
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->isEnd()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private peek()C
    .registers 3

    .prologue
    .line 2640
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->isEnd()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2641
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    const-string/jumbo v1, "End of String"

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2643
    :cond_f
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method


# virtual methods
.method public getEndIdx()I
    .registers 2

    .prologue
    .line 2666
    iget v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    return v0
.end method

.method public getFormatSpecifier()Ljava/util/Formatter$FormatSpecifier;
    .registers 2

    .prologue
    .line 2662
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->fs:Ljava/util/Formatter$FormatSpecifier;

    return-object v0
.end method
