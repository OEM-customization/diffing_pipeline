.class public Lsun/nio/fs/Globs;
.super Ljava/lang/Object;
.source "Globs.java"


# static fields
.field private static EOL:C = '\u0000'

.field private static final globMetaChars:Ljava/lang/String; = "\\*?[{"

.field private static final regexMetaChars:Ljava/lang/String; = ".^$+{[]|()"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-char v0, Lsun/nio/fs/Globs;->EOL:C

    .line 30
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isGlobMeta(C)Z
    .registers 3
    .param p0, "c"    # C

    .prologue
    .line 41
    const-string/jumbo v0, "\\*?[{"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static isRegexMeta(C)Z
    .registers 3
    .param p0, "c"    # C

    .prologue
    .line 37
    const-string/jumbo v0, ".^$+{[]|()"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static next(Ljava/lang/String;I)C
    .registers 3
    .param p0, "glob"    # Ljava/lang/String;
    .param p1, "i"    # I

    .prologue
    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_b

    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 49
    :cond_b
    sget-char v0, Lsun/nio/fs/Globs;->EOL:C

    return v0
.end method

.method private static toRegexPattern(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 13
    .param p0, "globPattern"    # Ljava/lang/String;
    .param p1, "isDos"    # Z

    .prologue
    .line 58
    const/4 v4, 0x0

    .line 59
    .local v4, "inGroup":Z
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "^"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .local v7, "regex":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 62
    .local v2, "i":I
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_1a6

    .line 63
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 64
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_1c2

    .line 196
    invoke-static {v0}, Lsun/nio/fs/Globs;->isRegexMeta(C)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 197
    const/16 v8, 0x5c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    :cond_24
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_a

    .line 67
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :sswitch_29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v3, v8, :cond_3a

    .line 68
    new-instance v8, Ljava/util/regex/PatternSyntaxException;

    const-string/jumbo v9, "No character to escape"

    .line 69
    add-int/lit8 v10, v3, -0x1

    .line 68
    invoke-direct {v8, v9, p0, v10}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    .line 71
    :cond_3a
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 72
    .local v6, "next":C
    invoke-static {v6}, Lsun/nio/fs/Globs;->isGlobMeta(C)Z

    move-result v8

    if-nez v8, :cond_4c

    invoke-static {v6}, Lsun/nio/fs/Globs;->isRegexMeta(C)Z

    move-result v8

    if-eqz v8, :cond_51

    .line 73
    :cond_4c
    const/16 v8, 0x5c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    :cond_51
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 78
    .end local v2    # "i":I
    .end local v6    # "next":C
    .restart local v3    # "i":I
    :sswitch_55
    if-eqz p1, :cond_5f

    .line 79
    const-string/jumbo v8, "\\\\"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5d
    move v2, v3

    .line 83
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_a

    .line 81
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_5f
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5d

    .line 86
    :sswitch_63
    if-eqz p1, :cond_9d

    .line 87
    const-string/jumbo v8, "[[^\\\\]&&["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :goto_6b
    invoke-static {p0, v3}, Lsun/nio/fs/Globs;->next(Ljava/lang/String;I)C

    move-result v8

    const/16 v9, 0x5e

    if-ne v8, v9, :cond_a4

    .line 93
    const-string/jumbo v8, "\\^"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    add-int/lit8 v2, v3, 0x1

    .line 107
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_7b
    :goto_7b
    const/4 v1, 0x0

    .line 108
    .local v1, "hasRangeStart":Z
    const/4 v5, 0x0

    .line 109
    :goto_7d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_8e

    .line 110
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 111
    const/16 v8, 0x5d

    if-ne v0, v8, :cond_c3

    move v2, v3

    .line 145
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_8e
    const/16 v8, 0x5d

    if-eq v0, v8, :cond_12c

    .line 146
    new-instance v8, Ljava/util/regex/PatternSyntaxException;

    const-string/jumbo v9, "Missing \']"

    add-int/lit8 v10, v2, -0x1

    invoke-direct {v8, v9, p0, v10}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    .line 89
    .end local v1    # "hasRangeStart":Z
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_9d
    const-string/jumbo v8, "[[^/]&&["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6b

    .line 97
    :cond_a4
    invoke-static {p0, v3}, Lsun/nio/fs/Globs;->next(Ljava/lang/String;I)C

    move-result v8

    const/16 v9, 0x21

    if-ne v8, v9, :cond_1be

    .line 98
    const/16 v8, 0x5e

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    add-int/lit8 v2, v3, 0x1

    .line 102
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :goto_b3
    invoke-static {p0, v2}, Lsun/nio/fs/Globs;->next(Ljava/lang/String;I)C

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_7b

    .line 103
    const/16 v8, 0x2d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_7b

    .line 114
    .end local v2    # "i":I
    .restart local v1    # "hasRangeStart":Z
    .restart local v3    # "i":I
    :cond_c3
    const/16 v8, 0x2f

    if-eq v0, v8, :cond_cd

    if-eqz p1, :cond_d8

    const/16 v8, 0x5c

    if-ne v0, v8, :cond_d8

    .line 115
    :cond_cd
    new-instance v8, Ljava/util/regex/PatternSyntaxException;

    const-string/jumbo v9, "Explicit \'name separator\' in class"

    .line 116
    add-int/lit8 v10, v3, -0x1

    .line 115
    invoke-direct {v8, v9, p0, v10}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    .line 119
    :cond_d8
    const/16 v8, 0x5c

    if-eq v0, v8, :cond_e0

    const/16 v8, 0x5b

    if-ne v0, v8, :cond_f9

    .line 122
    :cond_e0
    :goto_e0
    const/16 v8, 0x5c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    :cond_e5
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    const/16 v8, 0x2d

    if-ne v0, v8, :cond_127

    .line 127
    if-nez v1, :cond_106

    .line 128
    new-instance v8, Ljava/util/regex/PatternSyntaxException;

    const-string/jumbo v9, "Invalid range"

    .line 129
    add-int/lit8 v10, v3, -0x1

    .line 128
    invoke-direct {v8, v9, p0, v10}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    .line 120
    :cond_f9
    const/16 v8, 0x26

    if-ne v0, v8, :cond_e5

    invoke-static {p0, v3}, Lsun/nio/fs/Globs;->next(Ljava/lang/String;I)C

    move-result v8

    const/16 v9, 0x26

    if-ne v8, v9, :cond_e5

    goto :goto_e0

    .line 131
    :cond_106
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-static {p0, v3}, Lsun/nio/fs/Globs;->next(Ljava/lang/String;I)C

    move-result v0

    sget-char v8, Lsun/nio/fs/Globs;->EOL:C

    if-eq v0, v8, :cond_8e

    const/16 v8, 0x5d

    if-eq v0, v8, :cond_8e

    .line 134
    if-ge v0, v5, :cond_121

    .line 135
    new-instance v8, Ljava/util/regex/PatternSyntaxException;

    const-string/jumbo v9, "Invalid range"

    .line 136
    add-int/lit8 v10, v2, -0x3

    .line 135
    invoke-direct {v8, v9, p0, v10}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    .line 138
    :cond_121
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    const/4 v1, 0x0

    goto/16 :goto_7d

    .line 141
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_127
    const/4 v1, 0x1

    .line 142
    move v5, v0

    .local v5, "last":C
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_7d

    .line 148
    .end local v5    # "last":C
    :cond_12c
    const-string/jumbo v8, "]]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 151
    .end local v1    # "hasRangeStart":Z
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :sswitch_134
    if-eqz v4, :cond_141

    .line 152
    new-instance v8, Ljava/util/regex/PatternSyntaxException;

    const-string/jumbo v9, "Cannot nest groups"

    .line 153
    add-int/lit8 v10, v3, -0x1

    .line 152
    invoke-direct {v8, v9, p0, v10}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    .line 155
    :cond_141
    const-string/jumbo v8, "(?:(?:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const/4 v4, 0x1

    move v2, v3

    .line 157
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_a

    .line 159
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :sswitch_14b
    if-eqz v4, :cond_157

    .line 160
    const-string/jumbo v8, "))"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const/4 v4, 0x0

    :goto_154
    move v2, v3

    .line 165
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_a

    .line 163
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_157
    const/16 v8, 0x7d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_154

    .line 167
    :sswitch_15d
    if-eqz v4, :cond_168

    .line 168
    const-string/jumbo v8, ")|(?:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_165
    move v2, v3

    .line 172
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_a

    .line 170
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_168
    const/16 v8, 0x2c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_165

    .line 174
    :sswitch_16e
    invoke-static {p0, v3}, Lsun/nio/fs/Globs;->next(Ljava/lang/String;I)C

    move-result v8

    const/16 v9, 0x2a

    if-ne v8, v9, :cond_180

    .line 176
    const-string/jumbo v8, ".*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_a

    .line 180
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_180
    if-eqz p1, :cond_18b

    .line 181
    const-string/jumbo v8, "[^\\\\]*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_a

    .line 183
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_18b
    const-string/jumbo v8, "[^/]*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_a

    .line 188
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :sswitch_194
    if-eqz p1, :cond_19f

    .line 189
    const-string/jumbo v8, "[^\\\\]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_19c
    move v2, v3

    .line 193
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_a

    .line 191
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_19f
    const-string/jumbo v8, "[^/]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19c

    .line 203
    .end local v0    # "c":C
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_1a6
    if-eqz v4, :cond_1b3

    .line 204
    new-instance v8, Ljava/util/regex/PatternSyntaxException;

    const-string/jumbo v9, "Missing \'}"

    add-int/lit8 v10, v2, -0x1

    invoke-direct {v8, v9, p0, v10}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    .line 207
    :cond_1b3
    const/16 v8, 0x24

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .end local v2    # "i":I
    .restart local v0    # "c":C
    .restart local v3    # "i":I
    :cond_1be
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_b3

    .line 64
    nop

    :sswitch_data_1c2
    .sparse-switch
        0x2a -> :sswitch_16e
        0x2c -> :sswitch_15d
        0x2f -> :sswitch_55
        0x3f -> :sswitch_194
        0x5b -> :sswitch_63
        0x5c -> :sswitch_29
        0x7b -> :sswitch_134
        0x7d -> :sswitch_14b
    .end sparse-switch
.end method

.method static toUnixRegexPattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "globPattern"    # Ljava/lang/String;

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsun/nio/fs/Globs;->toRegexPattern(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static toWindowsRegexPattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "globPattern"    # Ljava/lang/String;

    .prologue
    .line 215
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lsun/nio/fs/Globs;->toRegexPattern(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
