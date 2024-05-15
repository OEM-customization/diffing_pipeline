.class public Ljava/net/URLDecoder;
.super Ljava/lang/Object;
.source "URLDecoder.java"


# static fields
.field static greylist-max-o dfltEncName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 82
    sget-object v0, Ljava/net/URLEncoder;->dfltEncName:Ljava/lang/String;

    sput-object v0, Ljava/net/URLDecoder;->dfltEncName:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist core-platform-api test-api decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    const/4 v0, 0x0

    .line 101
    .local v0, "str":Ljava/lang/String;
    :try_start_1
    sget-object v1, Ljava/net/URLDecoder;->dfltEncName:Ljava/lang/String;

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_7} :catch_9

    move-object v0, v1

    .line 104
    goto :goto_a

    .line 102
    :catch_9
    move-exception v1

    .line 106
    :goto_a
    return-object v0
.end method

.method public static whitelist core-platform-api test-api decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "needToChange":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 138
    .local v1, "numChars":I
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x1f4

    if-le v1, v3, :cond_e

    div-int/lit8 v3, v1, 0x2

    goto :goto_f

    :cond_e
    move v3, v1

    :goto_f
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 139
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 141
    .local v3, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_fb

    .line 146
    const/4 v4, 0x0

    .line 147
    .local v4, "bytes":[B
    :goto_1a
    if-ge v3, v1, :cond_f2

    .line 148
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 149
    .local v5, "c":C
    const/16 v6, 0x25

    if-eq v5, v6, :cond_37

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_2e

    .line 208
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 209
    add-int/lit8 v3, v3, 0x1

    .line 210
    goto :goto_1a

    .line 151
    :cond_2e
    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 152
    add-int/lit8 v3, v3, 0x1

    .line 153
    const/4 v0, 0x1

    .line 154
    goto :goto_1a

    .line 169
    :cond_37
    if-nez v4, :cond_44

    .line 170
    sub-int v7, v1, v3

    :try_start_3b
    div-int/lit8 v7, v7, 0x3

    new-array v7, v7, [B

    move-object v4, v7

    goto :goto_44

    .line 200
    :catch_41
    move-exception v6

    goto/16 :goto_d7

    .line 171
    :cond_44
    :goto_44
    const/4 v7, 0x0

    .line 173
    .local v7, "pos":I
    :goto_45
    add-int/lit8 v8, v3, 0x2

    if-ge v8, v1, :cond_bd

    if-ne v5, v6, :cond_bd

    .line 176
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/net/URLDecoder;->isValidHexChar(C)Z

    move-result v8

    if-eqz v8, :cond_a0

    add-int/lit8 v8, v3, 0x2

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/net/URLDecoder;->isValidHexChar(C)Z

    move-result v8

    if-eqz v8, :cond_a0

    .line 181
    add-int/lit8 v8, v3, 0x1

    add-int/lit8 v9, v3, 0x3

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 182
    .local v8, "v":I
    if-ltz v8, :cond_83

    .line 186
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "pos":I
    .local v9, "pos":I
    int-to-byte v10, v8

    aput-byte v10, v4, v7

    .line 187
    add-int/lit8 v3, v3, 0x3

    .line 188
    if-ge v3, v1, :cond_81

    .line 189
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v5, v7

    .line 190
    .end local v8    # "v":I
    :cond_81
    move v7, v9

    goto :goto_45

    .line 184
    .end local v9    # "pos":I
    .restart local v7    # "pos":I
    .restart local v8    # "v":I
    :cond_83
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "URLDecoder: Illegal hex characters in escape (%) pattern - negative value : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v3, 0x3

    .line 185
    invoke-virtual {p0, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "needToChange":Z
    .end local v1    # "numChars":I
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    .end local v4    # "bytes":[B
    .end local v5    # "c":C
    .end local p0    # "s":Ljava/lang/String;
    .end local p1    # "enc":Ljava/lang/String;
    throw v6

    .line 177
    .end local v8    # "v":I
    .restart local v0    # "needToChange":Z
    .restart local v1    # "numChars":I
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    .restart local v3    # "i":I
    .restart local v4    # "bytes":[B
    .restart local v5    # "c":C
    .restart local p0    # "s":Ljava/lang/String;
    .restart local p1    # "enc":Ljava/lang/String;
    :cond_a0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "URLDecoder: Illegal hex characters in escape (%) pattern : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v3, 0x3

    .line 178
    invoke-virtual {p0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "needToChange":Z
    .end local v1    # "numChars":I
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    .end local v4    # "bytes":[B
    .end local v5    # "c":C
    .end local p0    # "s":Ljava/lang/String;
    .end local p1    # "enc":Ljava/lang/String;
    throw v6

    .line 195
    .restart local v0    # "needToChange":Z
    .restart local v1    # "numChars":I
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    .restart local v3    # "i":I
    .restart local v4    # "bytes":[B
    .restart local v5    # "c":C
    .restart local p0    # "s":Ljava/lang/String;
    .restart local p1    # "enc":Ljava/lang/String;
    :cond_bd
    if-ge v3, v1, :cond_ca

    if-eq v5, v6, :cond_c2

    goto :goto_ca

    .line 196
    :cond_c2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "URLDecoder: Incomplete trailing escape (%) pattern"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "needToChange":Z
    .end local v1    # "numChars":I
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    .end local v4    # "bytes":[B
    .end local v5    # "c":C
    .end local p0    # "s":Ljava/lang/String;
    .end local p1    # "enc":Ljava/lang/String;
    throw v6

    .line 199
    .restart local v0    # "needToChange":Z
    .restart local v1    # "numChars":I
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    .restart local v3    # "i":I
    .restart local v4    # "bytes":[B
    .restart local v5    # "c":C
    .restart local p0    # "s":Ljava/lang/String;
    .restart local p1    # "enc":Ljava/lang/String;
    :cond_ca
    :goto_ca
    new-instance v6, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v6, v4, v8, v7, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_d3
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_d3} :catch_41

    .line 204
    nop

    .line 205
    .end local v7    # "pos":I
    const/4 v0, 0x1

    .line 206
    goto/16 :goto_1a

    .line 201
    .local v6, "e":Ljava/lang/NumberFormatException;
    :goto_d7
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "URLDecoder: Illegal hex characters in escape (%) pattern - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 214
    .end local v5    # "c":C
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_f2
    if-eqz v0, :cond_f9

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_fa

    :cond_f9
    move-object v5, p0

    :goto_fa
    return-object v5

    .line 142
    .end local v4    # "bytes":[B
    :cond_fb
    new-instance v4, Ljava/io/UnsupportedEncodingException;

    const-string v5, "URLDecoder: empty string enc parameter"

    invoke-direct {v4, v5}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static greylist-max-o isValidHexChar(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 219
    const/16 v0, 0x30

    if-gt v0, p0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x61

    if-gt v0, p0, :cond_10

    const/16 v0, 0x66

    if-le p0, v0, :cond_18

    :cond_10
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1a

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method
