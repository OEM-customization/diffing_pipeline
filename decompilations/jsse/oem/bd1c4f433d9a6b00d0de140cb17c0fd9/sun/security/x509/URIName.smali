.class public Lsun/security/x509/URIName;
.super Ljava/lang/Object;
.source "URIName.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;


# instance fields
.field private host:Ljava/lang/String;

.field private hostDNS:Lsun/security/x509/DNSName;

.field private hostIP:Lsun/security/x509/IPAddressName;

.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    :try_start_3
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;
    :try_end_a
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_a} :catch_2c

    .line 111
    iget-object v4, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_47

    .line 112
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "URI name must include scheme:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 108
    :catch_2c
    move-exception v3

    .line 109
    .local v3, "use":Ljava/net/URISyntaxException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invalid URI name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 115
    .end local v3    # "use":Ljava/net/URISyntaxException;
    :cond_47
    iget-object v4, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    .line 120
    iget-object v4, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    if-eqz v4, :cond_74

    .line 121
    iget-object v4, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_90

    .line 123
    iget-object v4, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    iget-object v5, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "ipV6Host":Ljava/lang/String;
    :try_start_6d
    new-instance v4, Lsun/security/x509/IPAddressName;

    invoke-direct {v4, v2}, Lsun/security/x509/IPAddressName;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lsun/security/x509/URIName;->hostIP:Lsun/security/x509/IPAddressName;
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_74} :catch_75

    .line 146
    .end local v2    # "ipV6Host":Ljava/lang/String;
    :cond_74
    :goto_74
    return-void

    .line 126
    .restart local v2    # "ipV6Host":Ljava/lang/String;
    :catch_75
    move-exception v0

    .line 127
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invalid URI name (host portion is not a valid IPv6 address):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 132
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v2    # "ipV6Host":Ljava/lang/String;
    :cond_90
    :try_start_90
    new-instance v4, Lsun/security/x509/DNSName;

    iget-object v5, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    invoke-direct {v4, v5}, Lsun/security/x509/DNSName;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lsun/security/x509/URIName;->hostDNS:Lsun/security/x509/DNSName;
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_99} :catch_9a

    goto :goto_74

    .line 133
    :catch_9a
    move-exception v0

    .line 137
    .restart local v0    # "ioe":Ljava/io/IOException;
    :try_start_9b
    new-instance v4, Lsun/security/x509/IPAddressName;

    iget-object v5, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    invoke-direct {v4, v5}, Lsun/security/x509/IPAddressName;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lsun/security/x509/URIName;->hostIP:Lsun/security/x509/IPAddressName;
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a4} :catch_a5

    goto :goto_74

    .line 138
    :catch_a5
    move-exception v1

    .line 139
    .local v1, "ioe2":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invalid URI name (host portion is not a valid DNS name, IPv4 address, or IPv6 address):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method constructor <init>(Ljava/net/URI;Ljava/lang/String;Lsun/security/x509/DNSName;)V
    .registers 4
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "hostDNS"    # Lsun/security/x509/DNSName;

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    .line 185
    iput-object p2, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    .line 186
    iput-object p3, p0, Lsun/security/x509/URIName;->hostDNS:Lsun/security/x509/DNSName;

    .line 187
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .registers 3
    .param p1, "derValue"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getIA5String()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/URIName;-><init>(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static nameConstraint(Lsun/security/util/DerValue;)Lsun/security/x509/URIName;
    .registers 10
    .param p0, "value"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getIA5String()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "name":Ljava/lang/String;
    :try_start_4
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_9} :catch_2c

    .line 164
    .local v4, "uri":Ljava/net/URI;
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_68

    .line 165
    invoke-virtual {v4}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "host":Ljava/lang/String;
    :try_start_13
    const-string/jumbo v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 169
    new-instance v1, Lsun/security/x509/DNSName;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lsun/security/x509/DNSName;-><init>(Ljava/lang/String;)V

    .line 173
    .local v1, "hostDNS":Lsun/security/x509/DNSName;
    :goto_26
    new-instance v6, Lsun/security/x509/URIName;

    invoke-direct {v6, v4, v0, v1}, Lsun/security/x509/URIName;-><init>(Ljava/net/URI;Ljava/lang/String;Lsun/security/x509/DNSName;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_2b} :catch_4d

    return-object v6

    .line 161
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "hostDNS":Lsun/security/x509/DNSName;
    .end local v4    # "uri":Ljava/net/URI;
    :catch_2c
    move-exception v5

    .line 162
    .local v5, "use":Ljava/net/URISyntaxException;
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid URI name constraint:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 171
    .end local v5    # "use":Ljava/net/URISyntaxException;
    .restart local v0    # "host":Ljava/lang/String;
    .restart local v4    # "uri":Ljava/net/URI;
    :cond_47
    :try_start_47
    new-instance v1, Lsun/security/x509/DNSName;

    invoke-direct {v1, v0}, Lsun/security/x509/DNSName;-><init>(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4c} :catch_4d

    .restart local v1    # "hostDNS":Lsun/security/x509/DNSName;
    goto :goto_26

    .line 174
    .end local v1    # "hostDNS":Lsun/security/x509/DNSName;
    :catch_4d
    move-exception v2

    .line 175
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid URI name constraint:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 178
    .end local v0    # "host":Ljava/lang/String;
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_68
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid URI name constraint (should not include scheme):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public constrains(Lsun/security/x509/GeneralNameInterface;)I
    .registers 12
    .param p1, "inputName"    # Lsun/security/x509/GeneralNameInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2e

    const/4 v8, 0x0

    .line 320
    if-nez p1, :cond_7

    .line 321
    const/4 v0, -0x1

    .line 372
    .end local p1    # "inputName":Lsun/security/x509/GeneralNameInterface;
    .local v0, "constraintType":I
    :cond_6
    :goto_6
    return v0

    .line 322
    .end local v0    # "constraintType":I
    .restart local p1    # "inputName":Lsun/security/x509/GeneralNameInterface;
    :cond_7
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_10

    .line 323
    const/4 v0, -0x1

    .restart local v0    # "constraintType":I
    goto :goto_6

    .end local v0    # "constraintType":I
    :cond_10
    move-object v6, p1

    .line 329
    check-cast v6, Lsun/security/x509/URIName;

    invoke-virtual {v6}, Lsun/security/x509/URIName;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, "otherHost":Ljava/lang/String;
    iget-object v6, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 333
    const/4 v0, 0x0

    .restart local v0    # "constraintType":I
    goto :goto_6

    .line 335
    .end local v0    # "constraintType":I
    :cond_21
    check-cast p1, Lsun/security/x509/URIName;

    .end local p1    # "inputName":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {p1}, Lsun/security/x509/URIName;->getHostObject()Ljava/lang/Object;

    move-result-object v4

    .line 337
    .local v4, "otherHostObject":Ljava/lang/Object;
    iget-object v6, p0, Lsun/security/x509/URIName;->hostDNS:Lsun/security/x509/DNSName;

    if-eqz v6, :cond_31

    .line 338
    instance-of v6, v4, Lsun/security/x509/DNSName;

    xor-int/lit8 v6, v6, 0x1

    .line 337
    if-eqz v6, :cond_33

    .line 340
    :cond_31
    const/4 v0, 0x3

    .restart local v0    # "constraintType":I
    goto :goto_6

    .line 343
    .end local v0    # "constraintType":I
    :cond_33
    iget-object v6, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_61

    const/4 v5, 0x1

    .line 344
    .local v5, "thisDomain":Z
    :goto_3c
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_63

    const/4 v2, 0x1

    .local v2, "otherDomain":Z
    :goto_43
    move-object v1, v4

    .line 345
    check-cast v1, Lsun/security/x509/DNSName;

    .line 348
    .local v1, "otherDNS":Lsun/security/x509/DNSName;
    iget-object v6, p0, Lsun/security/x509/URIName;->hostDNS:Lsun/security/x509/DNSName;

    invoke-virtual {v6, v1}, Lsun/security/x509/DNSName;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v0

    .line 351
    .restart local v0    # "constraintType":I
    if-nez v5, :cond_59

    xor-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_59

    .line 352
    const/4 v6, 0x2

    if-eq v0, v6, :cond_58

    .line 353
    const/4 v6, 0x1

    if-ne v0, v6, :cond_59

    .line 354
    :cond_58
    const/4 v0, 0x3

    .line 361
    :cond_59
    if-eq v5, v2, :cond_6

    .line 362
    if-nez v0, :cond_6

    .line 363
    if-eqz v5, :cond_65

    .line 364
    const/4 v0, 0x2

    goto :goto_6

    .line 343
    .end local v0    # "constraintType":I
    .end local v1    # "otherDNS":Lsun/security/x509/DNSName;
    .end local v2    # "otherDomain":Z
    .end local v5    # "thisDomain":Z
    :cond_61
    const/4 v5, 0x0

    .restart local v5    # "thisDomain":Z
    goto :goto_3c

    .line 344
    :cond_63
    const/4 v2, 0x0

    .restart local v2    # "otherDomain":Z
    goto :goto_43

    .line 366
    .restart local v0    # "constraintType":I
    .restart local v1    # "otherDNS":Lsun/security/x509/DNSName;
    :cond_65
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .registers 3
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putIA5String(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 219
    if-ne p0, p1, :cond_4

    .line 220
    const/4 v1, 0x1

    return v1

    .line 223
    :cond_4
    instance-of v1, p1, Lsun/security/x509/URIName;

    if-nez v1, :cond_a

    .line 224
    const/4 v1, 0x0

    return v1

    :cond_a
    move-object v0, p1

    .line 227
    check-cast v0, Lsun/security/x509/URIName;

    .line 229
    .local v0, "other":Lsun/security/x509/URIName;
    iget-object v1, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Lsun/security/x509/URIName;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getHostObject()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lsun/security/x509/URIName;->hostIP:Lsun/security/x509/IPAddressName;

    if-eqz v0, :cond_7

    .line 273
    iget-object v0, p0, Lsun/security/x509/URIName;->hostIP:Lsun/security/x509/IPAddressName;

    return-object v0

    .line 275
    :cond_7
    iget-object v0, p0, Lsun/security/x509/URIName;->hostDNS:Lsun/security/x509/DNSName;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 193
    const/4 v0, 0x6

    return v0
.end method

.method public getURI()Ljava/net/URI;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->hashCode()I

    move-result v0

    return v0
.end method

.method public subtreeDepth()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 384
    const/4 v0, 0x0

    .line 386
    .local v0, "dnsName":Lsun/security/x509/DNSName;
    :try_start_1
    new-instance v0, Lsun/security/x509/DNSName;

    .end local v0    # "dnsName":Lsun/security/x509/DNSName;
    iget-object v2, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    invoke-direct {v0, v2}, Lsun/security/x509/DNSName;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_d

    .line 390
    .local v0, "dnsName":Lsun/security/x509/DNSName;
    invoke-virtual {v0}, Lsun/security/x509/DNSName;->subtreeDepth()I

    move-result v2

    return v2

    .line 387
    .end local v0    # "dnsName":Lsun/security/x509/DNSName;
    :catch_d
    move-exception v1

    .line 388
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "URIName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
