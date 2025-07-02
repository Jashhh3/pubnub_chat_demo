 CI/CD Deployment of Chat App on AKS

                                                                                 Title: CI/CD Deployment of a Chat App on Azure Kubernetes using GitHub Actions 
What We Built Project Summary:  
Static chat app with a WhatsApp-like UI Built using HTML + CSS in index.html Served using NGINX 
inside a Docker container Deployed to Azure Kubernetes Service (AKS) 
                                                                                                          Architecture Diagram 
                                                                                                          
                                                                                                            GitHub (Push code) 
                                                                                                                    ↓ 
                                                                                                       GitHub Actions (CI/CD Pipeline) 
                                                                                                                    ↓ 
                                                                                                           Build Docker Image 
                                                                                                                    ↓ 
                                                                                                    Push to ACR (Azure Container Registry) 
                                                                                                                    ↓ 
                                                                                                    Deploy to AKS (Azure Kubernetes Service) 
                                                                                                                    ↓ 
                                                                                             Kubernetes Deployment → Pod running NGINX with your chat app 
                                                                                                                    ↓ 
                                                                                                       Kubernetes Service (LoadBalancer) 
                                                                                                                    ↓ 
                                                                                                          Access app via Public IP 
Steps Followed 
1. Docker Setup  
• Created Dockerfile with NGINX to serve static files  
• Built and pushed image to ACR  

2. Kubernetes Setup  
• Deployment and Service YAML files created  
• Service type: LoadBalancer to access app via public IP  

3. GitHub Actions CI/CD  
• On push to main branch: 
• Build Docker image  
• Push to ACR  
• Set AKS context  
• Deploy using kubectl apply

4. GitHub Actions Workflow Highlights:  
• Azure login with credentials stored in GitHub Secrets  
• Docker login to ACR  
• Automated deployment to Kubernetes
