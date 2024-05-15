.class public Lsun/security/util/PropertyExpander;
.super Ljava/lang/Object;
.source "PropertyExpander.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/util/PropertyExpander$ExpandException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static expand(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/util/PropertyExpander$ExpandException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsun/security/util/PropertyExpander;->expand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static expand(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 13
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "encodeURL"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/util/PropertyExpander$ExpandException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    .line 62
    if-nez p0, :cond_6

    .line 63
    return-object v8

    .line 65
    :cond_6
    const-string/jumbo v8, "${"

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 68
    .local v2, "p":I
    if-ne v2, v10, :cond_10

    return-object p0

    .line 70
    :cond_10
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 71
    .local v5, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 72
    .local v1, "max":I
    const/4 v0, 0x0

    .line 75
    .local v0, "i":I
    :cond_1e
    if-ge v2, v1, :cond_4a

    .line 76
    if-le v2, v0, :cond_2a

    .line 78
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    move v0, v2

    .line 81
    :cond_2a
    add-int/lit8 v3, v2, 0x2

    .line 84
    .local v3, "pe":I
    if-ge v3, v1, :cond_6f

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x7b

    if-ne v8, v9, :cond_6f

    .line 85
    const-string/jumbo v8, "}}"

    invoke-virtual {p0, v8, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 86
    if-eq v3, v10, :cond_43

    add-int/lit8 v8, v3, 0x2

    if-ne v8, v1, :cond_4f

    .line 88
    :cond_43
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    .end local v3    # "pe":I
    :cond_4a
    :goto_4a
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 92
    .restart local v3    # "pe":I
    :cond_4f
    add-int/lit8 v3, v3, 0x1

    .line 93
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    :goto_5a
    add-int/lit8 v0, v3, 0x1

    .line 131
    const-string/jumbo v8, "${"

    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 132
    if-ne v2, v10, :cond_1e

    .line 134
    if-ge v0, v1, :cond_4a

    .line 135
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4a

    .line 96
    :cond_6f
    :goto_6f
    if-ge v3, v1, :cond_7c

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x7d

    if-eq v8, v9, :cond_7c

    .line 97
    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    .line 99
    :cond_7c
    if-ne v3, v1, :cond_86

    .line 101
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4a

    .line 104
    :cond_86
    add-int/lit8 v8, v2, 0x2

    invoke-virtual {p0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "prop":Ljava/lang/String;
    const-string/jumbo v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9b

    .line 106
    sget-char v8, Ljava/io/File;->separatorChar:C

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5a

    .line 108
    :cond_9b
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, "val":Ljava/lang/String;
    if-eqz v7, :cond_c4

    .line 110
    if-eqz p1, :cond_ba

    .line 114
    :try_start_a3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-gtz v8, :cond_b6

    .line 115
    new-instance v8, Ljava/net/URI;

    invoke-direct {v8, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URI;->isAbsolute()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    .line 114
    if-eqz v8, :cond_ba

    .line 116
    :cond_b6
    invoke-static {v7}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b9
    .catch Ljava/net/URISyntaxException; {:try_start_a3 .. :try_end_b9} :catch_be

    move-result-object v7

    .line 122
    :cond_ba
    :goto_ba
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5a

    .line 118
    :catch_be
    move-exception v6

    .line 119
    .local v6, "use":Ljava/net/URISyntaxException;
    invoke-static {v7}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_ba

    .line 124
    .end local v6    # "use":Ljava/net/URISyntaxException;
    :cond_c4
    new-instance v8, Lsun/security/util/PropertyExpander$ExpandException;

    .line 125
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unable to expand property "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 124
    invoke-direct {v8, v9}, Lsun/security/util/PropertyExpander$ExpandException;-><init>(Ljava/lang/String;)V

    throw v8
.end method
