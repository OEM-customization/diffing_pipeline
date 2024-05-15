.class public Lcom/android/org/bouncycastle/util/IPAddress;
.super Ljava/lang/Object;
.source "IPAddress.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isMaskValue(Ljava/lang/String;I)Z
    .registers 5
    .param p0, "component"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 106
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_4} :catch_b

    move-result v1

    .line 108
    .local v1, "value":I
    if-ltz v1, :cond_a

    if-gt v1, p1, :cond_a

    const/4 v2, 0x1

    :cond_a
    return v2

    .line 111
    .end local v1    # "value":I
    :catch_b
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v2
.end method

.method public static isValid(Ljava/lang/String;)Z
    .registers 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public static isValidIPv4(Ljava/lang/String;)Z
    .registers 11
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x0

    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_9

    .line 46
    return v6

    .line 50
    :cond_9
    const/4 v2, 0x0

    .line 52
    .local v2, "octets":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, "temp":Ljava/lang/String;
    const/4 v4, 0x0

    .line 56
    .local v4, "start":I
    :goto_1f
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_46

    .line 57
    const/16 v7, 0x2e

    invoke-virtual {v5, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .local v3, "pos":I
    if-le v3, v4, :cond_46

    .line 59
    if-ne v2, v9, :cond_30

    .line 61
    return v6

    .line 65
    :cond_30
    :try_start_30
    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_37} :catch_3f

    move-result v1

    .line 71
    .local v1, "octet":I
    if-ltz v1, :cond_3e

    const/16 v7, 0xff

    if-le v1, v7, :cond_41

    .line 73
    :cond_3e
    return v6

    .line 68
    .end local v1    # "octet":I
    :catch_3f
    move-exception v0

    .line 69
    .local v0, "ex":Ljava/lang/NumberFormatException;
    return v6

    .line 75
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .restart local v1    # "octet":I
    :cond_41
    add-int/lit8 v4, v3, 0x1

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 79
    .end local v1    # "octet":I
    .end local v3    # "pos":I
    :cond_46
    if-ne v2, v9, :cond_49

    const/4 v6, 0x1

    :cond_49
    return v6
.end method

.method public static isValidIPv4WithNetmask(Ljava/lang/String;)Z
    .registers 5
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 85
    const-string/jumbo v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 86
    .local v0, "index":I
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "mask":Ljava/lang/String;
    if-lez v0, :cond_26

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 89
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/IPAddress;->isMaskValue(Ljava/lang/String;I)Z

    move-result v2

    .line 88
    :cond_26
    :goto_26
    return v2

    .line 89
    :cond_27
    const/4 v2, 0x1

    goto :goto_26
.end method

.method public static isValidIPv6(Ljava/lang/String;)Z
    .registers 14
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x8

    const/4 v8, 0x1

    const/4 v11, 0x0

    .line 126
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_b

    .line 128
    return v11

    .line 132
    :cond_b
    const/4 v3, 0x0

    .line 134
    .local v3, "octets":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, "temp":Ljava/lang/String;
    const/4 v0, 0x0

    .line 137
    .local v0, "doubleColonFound":Z
    const/4 v5, 0x0

    .line 138
    .local v5, "start":I
    :goto_22
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_7a

    .line 139
    const/16 v9, 0x3a

    invoke-virtual {v6, v9, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .local v4, "pos":I
    if-lt v4, v5, :cond_7a

    .line 141
    if-ne v3, v12, :cond_33

    .line 143
    return v11

    .line 146
    :cond_33
    if-eq v5, v4, :cond_6b

    .line 148
    invoke-virtual {v6, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 150
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v4, v9, :cond_57

    const/16 v9, 0x2e

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-lez v9, :cond_57

    .line 152
    invoke-static {v7}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_50

    .line 154
    return v11

    .line 157
    :cond_50
    add-int/lit8 v3, v3, 0x1

    .line 183
    .end local v7    # "value":Ljava/lang/String;
    :cond_52
    :goto_52
    add-int/lit8 v5, v4, 0x1

    .line 184
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 163
    .restart local v7    # "value":Ljava/lang/String;
    :cond_57
    :try_start_57
    invoke-virtual {v6, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_60
    .catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_60} :catch_69

    move-result v2

    .line 169
    .local v2, "octet":I
    if-ltz v2, :cond_68

    const v9, 0xffff

    if-le v2, v9, :cond_52

    .line 171
    :cond_68
    return v11

    .line 166
    .end local v2    # "octet":I
    :catch_69
    move-exception v1

    .line 167
    .local v1, "ex":Ljava/lang/NumberFormatException;
    return v11

    .line 177
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    .end local v7    # "value":Ljava/lang/String;
    :cond_6b
    if-eq v4, v8, :cond_78

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v4, v9, :cond_78

    if-eqz v0, :cond_78

    .line 179
    return v11

    .line 181
    :cond_78
    const/4 v0, 0x1

    goto :goto_52

    .line 187
    .end local v4    # "pos":I
    :cond_7a
    if-eq v3, v12, :cond_7d

    .end local v0    # "doubleColonFound":Z
    :goto_7c
    return v0

    .restart local v0    # "doubleColonFound":Z
    :cond_7d
    move v0, v8

    goto :goto_7c
.end method

.method public static isValidIPv6WithNetmask(Ljava/lang/String;)Z
    .registers 5
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 95
    const-string/jumbo v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 96
    .local v0, "index":I
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "mask":Ljava/lang/String;
    if-lez v0, :cond_26

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 99
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/IPAddress;->isMaskValue(Ljava/lang/String;I)Z

    move-result v2

    .line 98
    :cond_26
    :goto_26
    return v2

    .line 99
    :cond_27
    const/4 v2, 0x1

    goto :goto_26
.end method

.method public static isValidWithNetMask(Ljava/lang/String;)Z
    .registers 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv4WithNetmask(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv6WithNetmask(Ljava/lang/String;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method
