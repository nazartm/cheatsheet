MAVEN
=====

See dependency tree

     $ mvn dependency:tree
     
See if there are updates to dependencies

     $ mvn versions:display-dependency-updates
     
Upgrade to next release versions

     $ mvn versions:use-next-releases
     $ mvn versions:use-latest-releases
     
Generate build.properties with revision and build timestamp

    <plugin>
      <groupId>org.codehaus.mojo</groupId>
      <artifactId>buildnumber-maven-plugin</artifactId>
      <version>1.4</version>
      <executions>
          <execution>
              <id>buildnumber-create-metadata</id>
              <phase>generate-resources</phase>
              <goals>
                  <goal>create-metadata</goal>
              </goals>
          </execution>
      </executions>
      <configuration>
          <attach>true</attach>
          <!--make it available for jar/war classpath resource -->
          <addOutputDirectoryToResources>true</addOutputDirectoryToResources>
          <shortRevisionLength>5</shortRevisionLength>
      </configuration>
    </plugin>
