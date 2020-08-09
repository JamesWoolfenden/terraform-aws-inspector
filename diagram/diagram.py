# diagram.py
from diagrams import Cluster, Diagram
from diagrams.aws.security import Inspector
from diagrams.aws.management import Cloudwatch

with Diagram("Inspector", show=False):
          Cloudwatch("Event")>>Inspector("Inspector")
