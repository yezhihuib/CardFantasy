package cfvbaibai.cardfantasy.game;

import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Node;
import org.dom4j.io.SAXReader;

import cfvbaibai.cardfantasy.CardFantasyRuntimeException;

public class LilithDataStore {
    private Map<String, LilithStartupInfo> lilithStartupInfos;
    private List<String> allKeys;

    private LilithDataStore() {
        this.lilithStartupInfos = new HashMap<String, LilithStartupInfo>();
        this.allKeys = new ArrayList<String>();
    }

    public static LilithDataStore loadDefault() {
        LilithDataStore store = new LilithDataStore();

        URL url = LilithDataStore.class.getClassLoader().getResource("cfvbaibai/cardfantasy/game/LilithData.xml");
        SAXReader reader = new SAXReader();
        try {
            Document doc = reader.read(url);
            @SuppressWarnings("unchecked")
            List<Node> lilithNodes = doc.selectNodes("/Liliths/Lilith");
            for (Node lilithNode : lilithNodes) {
                int adjAT = Integer.parseInt(lilithNode.valueOf("@adjAT"));
                int adjHP = Integer.parseInt(lilithNode.valueOf("@adjHP"));
                String id = lilithNode.valueOf("@id");
                String deckDescs = lilithNode.getText();
                LilithStartupInfo lsi = new LilithStartupInfo(id, deckDescs, adjAT, adjHP);
                store.add(lsi);
            }
            return store;
        } catch (DocumentException e) {
            throw new CardFantasyRuntimeException("Cannot load card info XML.", e);
        }
    }

    private void add(LilithStartupInfo lsi) {
        this.lilithStartupInfos.put(lsi.getBossId(), lsi);
        this.allKeys.add(lsi.getBossId());
    }
    
    public LilithStartupInfo getStartupInfo(String bossId) {
        return this.lilithStartupInfos.get(bossId);
    }
    
    public List<LilithStartupInfo> getAll() {
        return new ArrayList<LilithStartupInfo>(this.lilithStartupInfos.values());
    }
}