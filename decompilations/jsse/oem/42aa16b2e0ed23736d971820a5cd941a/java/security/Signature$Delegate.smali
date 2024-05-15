.class Ljava/security/Signature$Delegate;
.super Ljava/security/Signature;
.source "Signature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Delegate"
.end annotation


# static fields
.field private static final greylist-max-o I_PRIV:I = 0x2

.field private static final greylist-max-o I_PRIV_SR:I = 0x3

.field private static final greylist-max-o I_PUB:I = 0x1

.field private static greylist-max-o warnCount:I


# instance fields
.field private final greylist-max-o lock:Ljava/lang/Object;

.field private greylist-max-o sigSpi:Ljava/security/SignatureSpi;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1212
    const/16 v0, 0xa

    sput v0, Ljava/security/Signature$Delegate;->warnCount:I

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 1163
    invoke-direct {p0, p1}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    .line 1164
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    .line 1165
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/security/SignatureSpi;Ljava/lang/String;)V
    .registers 4
    .param p1, "sigSpi"    # Ljava/security/SignatureSpi;
    .param p2, "algorithm"    # Ljava/lang/String;

    .line 1155
    invoke-direct {p0, p2}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    .line 1156
    iput-object p1, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    .line 1157
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    .line 1158
    return-void
.end method

.method private greylist-max-o chooseProvider(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 11
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1282
    iget-object v0, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1285
    :try_start_3
    iget-object v1, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    if-eqz v1, :cond_10

    if-nez p2, :cond_10

    .line 1286
    iget-object v1, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-direct {p0, v1, p1, p2, p3}, Ljava/security/Signature$Delegate;->init(Ljava/security/SignatureSpi;ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 1287
    monitor-exit v0

    return-void

    .line 1289
    :cond_10
    const/4 v1, 0x0

    .line 1292
    .local v1, "lastException":Ljava/lang/Exception;
    # getter for: Ljava/security/Signature;->algorithm:Ljava/lang/String;
    invoke-static {p0}, Ljava/security/Signature;->access$000(Ljava/security/Signature;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NONEwithRSA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1293
    # getter for: Ljava/security/Signature;->rsaIds:Ljava/util/List;
    invoke-static {}, Ljava/security/Signature;->access$100()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lsun/security/jca/GetInstance;->getServices(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    goto :goto_30

    .line 1295
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    :cond_26
    const-string v2, "Signature"

    .line 1296
    # getter for: Ljava/security/Signature;->algorithm:Ljava/lang/String;
    invoke-static {p0}, Ljava/security/Signature;->access$000(Ljava/security/Signature;)Ljava/lang/String;

    move-result-object v3

    .line 1295
    invoke-static {v2, v3}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1298
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    :goto_30
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider$Service;

    .line 1301
    .local v4, "s":Ljava/security/Provider$Service;
    invoke-virtual {v4, p2}, Ljava/security/Provider$Service;->supportsParameter(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_47

    .line 1302
    goto :goto_34

    .line 1305
    :cond_47
    # invokes: Ljava/security/Signature;->isSpi(Ljava/security/Provider$Service;)Z
    invoke-static {v4}, Ljava/security/Signature;->access$200(Ljava/security/Provider$Service;)Z

    move-result v5
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_a0

    if-nez v5, :cond_4e

    .line 1306
    goto :goto_34

    .line 1309
    :cond_4e
    :try_start_4e
    invoke-static {v4}, Ljava/security/Signature$Delegate;->newInstance(Ljava/security/Provider$Service;)Ljava/security/SignatureSpi;

    move-result-object v5

    .line 1310
    .local v5, "spi":Ljava/security/SignatureSpi;
    invoke-direct {p0, v5, p1, p2, p3}, Ljava/security/Signature$Delegate;->init(Ljava/security/SignatureSpi;ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 1311
    invoke-virtual {v4}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v6

    iput-object v6, p0, Ljava/security/Signature$Delegate;->provider:Ljava/security/Provider;

    .line 1312
    iput-object v5, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5d} :catch_5f
    .catchall {:try_start_4e .. :try_end_5d} :catchall_a0

    .line 1318
    :try_start_5d
    monitor-exit v0

    return-void

    .line 1319
    .end local v5    # "spi":Ljava/security/SignatureSpi;
    :catch_5f
    move-exception v5

    .line 1323
    .local v5, "e":Ljava/lang/Exception;
    if-nez v1, :cond_63

    .line 1324
    move-object v1, v5

    .line 1327
    :cond_63
    instance-of v6, v1, Ljava/security/InvalidKeyException;

    if-nez v6, :cond_68

    .line 1331
    .end local v4    # "s":Ljava/security/Provider$Service;
    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_34

    .line 1328
    .restart local v4    # "s":Ljava/security/Provider$Service;
    .restart local v5    # "e":Ljava/lang/Exception;
    :cond_68
    move-object v3, v1

    check-cast v3, Ljava/security/InvalidKeyException;

    .end local p0    # "this":Ljava/security/Signature$Delegate;
    .end local p1    # "type":I
    .end local p2    # "key":Ljava/security/Key;
    .end local p3    # "random":Ljava/security/SecureRandom;
    throw v3

    .line 1333
    .end local v4    # "s":Ljava/security/Provider$Service;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Ljava/security/Signature$Delegate;
    .restart local p1    # "type":I
    .restart local p2    # "key":Ljava/security/Key;
    .restart local p3    # "random":Ljava/security/SecureRandom;
    :cond_6c
    instance-of v3, v1, Ljava/security/InvalidKeyException;

    if-nez v3, :cond_9c

    .line 1336
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-nez v3, :cond_98

    .line 1339
    if-eqz p2, :cond_7f

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_81

    :cond_7f
    const-string v3, "(null)"

    .line 1340
    .local v3, "k":Ljava/lang/String;
    :goto_81
    new-instance v4, Ljava/security/InvalidKeyException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No installed provider supports this key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Ljava/security/Signature$Delegate;
    .end local p1    # "type":I
    .end local p2    # "key":Ljava/security/Key;
    .end local p3    # "random":Ljava/security/SecureRandom;
    throw v4

    .line 1337
    .end local v3    # "k":Ljava/lang/String;
    .restart local p0    # "this":Ljava/security/Signature$Delegate;
    .restart local p1    # "type":I
    .restart local p2    # "key":Ljava/security/Key;
    .restart local p3    # "random":Ljava/security/SecureRandom;
    :cond_98
    move-object v3, v1

    check-cast v3, Ljava/lang/RuntimeException;

    .end local p0    # "this":Ljava/security/Signature$Delegate;
    .end local p1    # "type":I
    .end local p2    # "key":Ljava/security/Key;
    .end local p3    # "random":Ljava/security/SecureRandom;
    throw v3

    .line 1334
    .restart local p0    # "this":Ljava/security/Signature$Delegate;
    .restart local p1    # "type":I
    .restart local p2    # "key":Ljava/security/Key;
    .restart local p3    # "random":Ljava/security/SecureRandom;
    :cond_9c
    move-object v3, v1

    check-cast v3, Ljava/security/InvalidKeyException;

    .end local p0    # "this":Ljava/security/Signature$Delegate;
    .end local p1    # "type":I
    .end local p2    # "key":Ljava/security/Key;
    .end local p3    # "random":Ljava/security/SecureRandom;
    throw v3

    .line 1343
    .end local v1    # "lastException":Ljava/lang/Exception;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    .restart local p0    # "this":Ljava/security/Signature$Delegate;
    .restart local p1    # "type":I
    .restart local p2    # "key":Ljava/security/Key;
    .restart local p3    # "random":Ljava/security/SecureRandom;
    :catchall_a0
    move-exception v1

    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_5d .. :try_end_a2} :catchall_a0

    throw v1
.end method

.method private greylist-max-o init(Ljava/security/SignatureSpi;ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 8
    .param p1, "spi"    # Ljava/security/SignatureSpi;
    .param p2, "type"    # I
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1352
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2e

    const/4 v0, 0x2

    if-eq p2, v0, :cond_27

    const/4 v0, 0x3

    if-ne p2, v0, :cond_10

    .line 1360
    move-object v0, p3

    check-cast v0, Ljava/security/PrivateKey;

    invoke-virtual {p1, v0, p4}, Ljava/security/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 1361
    goto :goto_35

    .line 1363
    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1357
    :cond_27
    move-object v0, p3

    check-cast v0, Ljava/security/PrivateKey;

    invoke-virtual {p1, v0}, Ljava/security/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 1358
    goto :goto_35

    .line 1354
    :cond_2e
    move-object v0, p3

    check-cast v0, Ljava/security/PublicKey;

    invoke-virtual {p1, v0}, Ljava/security/SignatureSpi;->engineInitVerify(Ljava/security/PublicKey;)V

    .line 1355
    nop

    .line 1365
    :goto_35
    return-void
.end method

.method private static greylist-max-o newInstance(Ljava/security/Provider$Service;)Ljava/security/SignatureSpi;
    .registers 5
    .param p0, "s"    # Ljava/security/Provider$Service;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1193
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cipher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1196
    :try_start_c
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-virtual {p0}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 1197
    .local v0, "c":Ljavax/crypto/Cipher;
    new-instance v1, Ljava/security/Signature$CipherAdapter;

    invoke-direct {v1, v0}, Ljava/security/Signature$CipherAdapter;-><init>(Ljavax/crypto/Cipher;)V
    :try_end_1b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_c .. :try_end_1b} :catch_1c

    return-object v1

    .line 1198
    .end local v0    # "c":Ljavax/crypto/Cipher;
    :catch_1c
    move-exception v0

    .line 1199
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v1, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1202
    .end local v0    # "e":Ljavax/crypto/NoSuchPaddingException;
    :cond_23
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1203
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/security/SignatureSpi;

    if-eqz v1, :cond_30

    .line 1207
    move-object v1, v0

    check-cast v1, Ljava/security/SignatureSpi;

    return-object v1

    .line 1204
    :cond_30
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a SignatureSpi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method greylist-max-o chooseFirstProvider()V
    .registers 7

    .line 1220
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    if-eqz v0, :cond_5

    .line 1221
    return-void

    .line 1223
    :cond_5
    iget-object v0, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1224
    :try_start_8
    iget-object v1, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    if-eqz v1, :cond_e

    .line 1225
    monitor-exit v0

    return-void

    .line 1243
    :cond_e
    const/4 v1, 0x0

    .line 1246
    .local v1, "lastException":Ljava/lang/Exception;
    # getter for: Ljava/security/Signature;->algorithm:Ljava/lang/String;
    invoke-static {p0}, Ljava/security/Signature;->access$000(Ljava/security/Signature;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NONEwithRSA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1247
    # getter for: Ljava/security/Signature;->rsaIds:Ljava/util/List;
    invoke-static {}, Ljava/security/Signature;->access$100()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lsun/security/jca/GetInstance;->getServices(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    goto :goto_2e

    .line 1249
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    :cond_24
    const-string v2, "Signature"

    .line 1250
    # getter for: Ljava/security/Signature;->algorithm:Ljava/lang/String;
    invoke-static {p0}, Ljava/security/Signature;->access$000(Ljava/security/Signature;)Ljava/lang/String;

    move-result-object v3

    .line 1249
    invoke-static {v2, v3}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1252
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    :goto_2e
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider$Service;

    .line 1254
    .local v4, "s":Ljava/security/Provider$Service;
    # invokes: Ljava/security/Signature;->isSpi(Ljava/security/Provider$Service;)Z
    invoke-static {v4}, Ljava/security/Signature;->access$200(Ljava/security/Provider$Service;)Z

    move-result v5
    :try_end_42
    .catchall {:try_start_8 .. :try_end_42} :catchall_64

    if-nez v5, :cond_45

    .line 1255
    goto :goto_32

    .line 1258
    :cond_45
    :try_start_45
    invoke-static {v4}, Ljava/security/Signature$Delegate;->newInstance(Ljava/security/Provider$Service;)Ljava/security/SignatureSpi;

    move-result-object v5

    iput-object v5, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    .line 1259
    invoke-virtual {v4}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    iput-object v5, p0, Ljava/security/Signature$Delegate;->provider:Ljava/security/Provider;
    :try_end_51
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_45 .. :try_end_51} :catch_53
    .catchall {:try_start_45 .. :try_end_51} :catchall_64

    .line 1266
    :try_start_51
    monitor-exit v0

    return-void

    .line 1267
    :catch_53
    move-exception v5

    .line 1268
    .local v5, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v5

    .line 1270
    .end local v4    # "s":Ljava/security/Provider$Service;
    .end local v5    # "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_32

    .line 1271
    :cond_56
    new-instance v3, Ljava/security/ProviderException;

    const-string v4, "Could not construct SignatureSpi instance"

    invoke-direct {v3, v4}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 1273
    .local v3, "e":Ljava/security/ProviderException;
    if-eqz v1, :cond_62

    .line 1274
    invoke-virtual {v3, v1}, Ljava/security/ProviderException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1276
    :cond_62
    nop

    .end local p0    # "this":Ljava/security/Signature$Delegate;
    throw v3

    .line 1277
    .end local v1    # "lastException":Ljava/lang/Exception;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    .end local v3    # "e":Ljava/security/ProviderException;
    .restart local p0    # "this":Ljava/security/Signature$Delegate;
    :catchall_64
    move-exception v1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_51 .. :try_end_66} :catchall_64

    throw v1
.end method

.method public whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1176
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1177
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    instance-of v1, v0, Ljava/lang/Cloneable;

    if-eqz v1, :cond_1d

    .line 1178
    invoke-virtual {v0}, Ljava/security/SignatureSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SignatureSpi;

    .line 1182
    .local v0, "sigSpiClone":Ljava/security/SignatureSpi;
    new-instance v1, Ljava/security/Signature$Delegate;

    .line 1183
    # getter for: Ljava/security/Signature;->algorithm:Ljava/lang/String;
    invoke-static {p0}, Ljava/security/Signature;->access$000(Ljava/security/Signature;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/security/Signature$Delegate;-><init>(Ljava/security/SignatureSpi;Ljava/lang/String;)V

    .line 1184
    .local v1, "that":Ljava/security/Signature;
    iget-object v2, p0, Ljava/security/Signature;->provider:Ljava/security/Provider;

    iput-object v2, v1, Ljava/security/Signature;->provider:Ljava/security/Provider;

    .line 1185
    return-object v1

    .line 1187
    .end local v0    # "sigSpiClone":Ljava/security/SignatureSpi;
    .end local v1    # "that":Ljava/security/Signature;
    :cond_1d
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method protected whitelist core-platform-api test-api engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 1453
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1454
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist core-platform-api test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .line 1458
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1459
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0}, Ljava/security/SignatureSpi;->engineGetParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist core-platform-api test-api engineInitSign(Ljava/security/PrivateKey;)V
    .registers 4
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1382
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    if-eqz v0, :cond_10

    iget-object v0, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    if-eqz v0, :cond_a

    if-nez p1, :cond_10

    .line 1383
    :cond_a
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    goto :goto_15

    .line 1385
    :cond_10
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljava/security/Signature$Delegate;->chooseProvider(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 1387
    :goto_15
    return-void
.end method

.method protected whitelist core-platform-api test-api engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .registers 4
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1393
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    if-eqz v0, :cond_10

    iget-object v0, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    if-eqz v0, :cond_a

    if-nez p1, :cond_10

    .line 1394
    :cond_a
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    goto :goto_14

    .line 1396
    :cond_10
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Ljava/security/Signature$Delegate;->chooseProvider(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 1398
    :goto_14
    return-void
.end method

.method protected whitelist core-platform-api test-api engineInitVerify(Ljava/security/PublicKey;)V
    .registers 4
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1371
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    if-eqz v0, :cond_10

    iget-object v0, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    if-eqz v0, :cond_a

    if-nez p1, :cond_10

    .line 1372
    :cond_a
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineInitVerify(Ljava/security/PublicKey;)V

    goto :goto_15

    .line 1374
    :cond_10
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljava/security/Signature$Delegate;->chooseProvider(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 1376
    :goto_15
    return-void
.end method

.method protected whitelist core-platform-api test-api engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 1441
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1442
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/SignatureSpi;->engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1443
    return-void
.end method

.method protected whitelist core-platform-api test-api engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 3
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1447
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1448
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1449
    return-void
.end method

.method protected whitelist core-platform-api test-api engineSign([BII)I
    .registers 5
    .param p1, "outbuf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 1423
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1424
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/SignatureSpi;->engineSign([BII)I

    move-result v0

    return v0
.end method

.method protected whitelist core-platform-api test-api engineSign()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 1417
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1418
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0}, Ljava/security/SignatureSpi;->engineSign()[B

    move-result-object v0

    return-object v0
.end method

.method protected whitelist core-platform-api test-api engineUpdate(B)V
    .registers 3
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 1401
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1402
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineUpdate(B)V

    .line 1403
    return-void
.end method

.method protected whitelist core-platform-api test-api engineUpdate(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .line 1412
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1413
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 1414
    return-void
.end method

.method protected whitelist core-platform-api test-api engineUpdate([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 1407
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1408
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/SignatureSpi;->engineUpdate([BII)V

    .line 1409
    return-void
.end method

.method protected whitelist core-platform-api test-api engineVerify([B)Z
    .registers 3
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 1429
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1430
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineVerify([B)Z

    move-result v0

    return v0
.end method

.method protected whitelist core-platform-api test-api engineVerify([BII)Z
    .registers 5
    .param p1, "sigBytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 1435
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1436
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/SignatureSpi;->engineVerify([BII)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o core-platform-api getCurrentSpi()Ljava/security/SignatureSpi;
    .registers 3

    .line 1465
    iget-object v0, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    if-nez v0, :cond_7

    .line 1466
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    return-object v0

    .line 1468
    :cond_7
    monitor-enter v0

    .line 1469
    :try_start_8
    iget-object v1, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    monitor-exit v0

    return-object v1

    .line 1470
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_c

    throw v1
.end method
