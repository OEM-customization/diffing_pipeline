.class public final Ljava/net/IDN;
.super Ljava/lang/Object;
.source "IDN.java"


# static fields
.field public static final ALLOW_UNASSIGNED:I = 0x1

.field public static final USE_STD3_ASCII_RULES:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method private static convertFullStop(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 3
    .param p0, "input"    # Ljava/lang/StringBuffer;

    .prologue
    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 174
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/net/IDN;->isLabelSeperator(C)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 175
    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 173
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 178
    :cond_19
    return-object p0
.end method

.method private static isLabelSeperator(C)Z
    .registers 3
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x1

    .line 169
    const/16 v1, 0x3002

    if-eq p0, v1, :cond_a

    const v1, 0xff0e

    if-ne p0, v1, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const v1, 0xff61

    if-eq p0, v1, :cond_a

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static toASCII(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toASCII(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "flag"    # I

    .prologue
    .line 110
    :try_start_0
    invoke-static {p0, p1}, Landroid/icu/text/IDNA;->convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_7
    .catch Landroid/icu/text/StringPrepParseException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    .line 111
    :catch_9
    move-exception v0

    .line 112
    .local v0, "e":Landroid/icu/text/StringPrepParseException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid input to toASCII: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toUnicode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUnicode(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "flag"    # I

    .prologue
    .line 160
    :try_start_0
    invoke-static {p0, p1}, Landroid/icu/text/IDNA;->convertIDNToUnicode(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v1}, Ljava/net/IDN;->convertFullStop(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_b
    .catch Landroid/icu/text/StringPrepParseException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    .line 161
    :catch_d
    move-exception v0

    .line 164
    .local v0, "e":Landroid/icu/text/StringPrepParseException;
    return-object p0
.end method
