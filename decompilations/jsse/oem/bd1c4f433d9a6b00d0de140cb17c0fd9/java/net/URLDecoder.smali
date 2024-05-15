.class public Ljava/net/URLDecoder;
.super Ljava/lang/Object;
.source "URLDecoder.java"


# static fields
.field static dfltEncName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    sget-object v0, Ljava/net/URLEncoder;->dfltEncName:Ljava/lang/String;

    sput-object v0, Ljava/net/URLDecoder;->dfltEncName:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 98
    const/4 v1, 0x0

    .line 101
    .local v1, "str":Ljava/lang/String;
    :try_start_1
    sget-object v2, Ljava/net/URLDecoder;->dfltEncName:Ljava/lang/String;

    invoke-static {p0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_6} :catch_8

    move-result-object v1

    .line 106
    .end local v1    # "str":Ljava/lang/String;
    :goto_7
    return-object v1

    .line 102
    .restart local v1    # "str":Ljava/lang/String;
    :catch_8
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_7
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x25

    .line 136
    const/4 v4, 0x0

    .line 137
    .local v4, "needToChange":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 138
    .local v5, "numChars":I
    new-instance v8, Ljava/lang/StringBuffer;

    const/16 v10, 0x1f4

    if-le v5, v10, :cond_22

    div-int/lit8 v10, v5, 0x2

    :goto_f
    invoke-direct {v8, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 139
    .local v8, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 141
    .local v3, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_24

    .line 142
    new-instance v10, Ljava/io/UnsupportedEncodingException;

    const-string/jumbo v11, "URLDecoder: empty string enc parameter"

    invoke-direct {v10, v11}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v10

    .end local v3    # "i":I
    .end local v8    # "sb":Ljava/lang/StringBuffer;
    :cond_22
    move v10, v5

    .line 138
    goto :goto_f

    .line 146
    .restart local v3    # "i":I
    .restart local v8    # "sb":Ljava/lang/StringBuffer;
    :cond_24
    const/4 v0, 0x0

    .line 147
    :goto_25
    if-ge v3, v5, :cond_ff

    .line 148
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 149
    .local v1, "c":C
    sparse-switch v1, :sswitch_data_106

    .line 207
    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 208
    add-int/lit8 v3, v3, 0x1

    .line 209
    goto :goto_25

    .line 151
    :sswitch_34
    const/16 v10, 0x20

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 152
    add-int/lit8 v3, v3, 0x1

    .line 153
    const/4 v4, 0x1

    .line 154
    goto :goto_25

    .line 169
    :sswitch_3d
    if-nez v0, :cond_45

    .line 170
    sub-int v10, v5, v3

    :try_start_41
    div-int/lit8 v10, v10, 0x3

    new-array v0, v10, [B

    .line 171
    :cond_45
    const/4 v6, 0x0

    .local v6, "pos":I
    move v7, v6

    .line 173
    .end local v6    # "pos":I
    .local v7, "pos":I
    :goto_47
    add-int/lit8 v10, v3, 0x2

    if-ge v10, v5, :cond_e6

    .line 174
    if-ne v1, v12, :cond_e6

    .line 176
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/net/URLDecoder;->isValidHexChar(C)Z

    move-result v10

    if-eqz v10, :cond_67

    add-int/lit8 v10, v3, 0x2

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/net/URLDecoder;->isValidHexChar(C)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_a6

    .line 177
    :cond_67
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "URLDecoder: Illegal hex characters in escape (%) pattern : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 178
    add-int/lit8 v12, v3, 0x3

    invoke-virtual {p0, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 177
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_87
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_87} :catch_87

    .line 199
    .end local v7    # "pos":I
    :catch_87
    move-exception v2

    .line 200
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    .line 201
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "URLDecoder: Illegal hex characters in escape (%) pattern - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 202
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v12

    .line 201
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 200
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 181
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v7    # "pos":I
    :cond_a6
    add-int/lit8 v10, v3, 0x1

    add-int/lit8 v11, v3, 0x3

    :try_start_aa
    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 182
    .local v9, "v":I
    if-gez v9, :cond_d6

    .line 183
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "URLDecoder: Illegal hex characters in escape (%) pattern - negative value : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 184
    add-int/lit8 v12, v3, 0x3

    invoke-virtual {p0, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 183
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 185
    :cond_d6
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    int-to-byte v10, v9

    aput-byte v10, v0, v7

    .line 186
    add-int/lit8 v3, v3, 0x3

    .line 187
    if-ge v3, v5, :cond_e3

    .line 188
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :cond_e3
    move v7, v6

    .end local v6    # "pos":I
    .restart local v7    # "pos":I
    goto/16 :goto_47

    .line 194
    .end local v9    # "v":I
    :cond_e6
    if-ge v3, v5, :cond_f3

    if-ne v1, v12, :cond_f3

    .line 195
    new-instance v10, Ljava/lang/IllegalArgumentException;

    .line 196
    const-string/jumbo v11, "URLDecoder: Incomplete trailing escape (%) pattern"

    .line 195
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 198
    :cond_f3
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v0, v11, v7, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_fc
    .catch Ljava/lang/NumberFormatException; {:try_start_aa .. :try_end_fc} :catch_87

    .line 204
    const/4 v4, 0x1

    goto/16 :goto_25

    .line 213
    .end local v1    # "c":C
    .end local v7    # "pos":I
    :cond_ff
    if-eqz v4, :cond_105

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "s":Ljava/lang/String;
    :cond_105
    return-object p0

    .line 149
    :sswitch_data_106
    .sparse-switch
        0x25 -> :sswitch_3d
        0x2b -> :sswitch_34
    .end sparse-switch
.end method

.method private static isValidHexChar(C)Z
    .registers 4
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 218
    const/16 v2, 0x30

    if-gt v2, p0, :cond_b

    const/16 v2, 0x39

    if-gt p0, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/16 v2, 0x61

    if-gt v2, p0, :cond_13

    const/16 v2, 0x66

    if-le p0, v2, :cond_a

    :cond_13
    const/16 v2, 0x41

    if-gt v2, p0, :cond_1b

    const/16 v2, 0x46

    if-le p0, v2, :cond_a

    :cond_1b
    move v0, v1

    goto :goto_a
.end method
